<?php
// Include the database connection
include('db_connection.php'); // Ensure you're using the PDO connection

// Fetching events from the event table using PDO
$query = "SELECT id, event_name, day, date, time, artist, background_type, min_members, max_members, price ,Phone_no_to_connect FROM events";
$stmt = $conn->prepare($query);
$stmt->execute();

// Fetch events into an array
$events = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<?php
include('db_connection.php'); // Include database connection

// Handle AJAX request for fetching institutions
if (isset($_GET['type'])) {
    $type = htmlspecialchars($_GET['type']); // Sanitize input

    // Fetch institutions of the selected type in ascending order
    $query = "SELECT Institute_Name FROM institutes WHERE Institute_Type = :type ORDER BY Institute_Name ASC";
    $stmt = $conn->prepare($query);
    $stmt->bindParam(':type', $type, PDO::PARAM_STR);
    $stmt->execute();

    $institutes = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Return JSON response
    echo json_encode($institutes);
    exit(); // Stop further execution of the script
}
?>


<?php
// Retrieve form data and handle registration
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve form data
    $event_id = $_POST['event_id'];
    $full_name = $_POST['full_name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $ticket_type = $_POST['ticket_type'];
    $institution = $_POST['institution'];
    $additional_request = $_POST['additional_request'];
    $age = $_POST['age']; // Add the age field here

    // Get event details to validate and process
    $query = "SELECT * FROM events WHERE id = :event_id";
    $stmt = $conn->prepare($query);
    $stmt->execute(['event_id' => $event_id]);
    $event = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($event) {
            // Insert registration into the registrations table
            $sql = "INSERT INTO registrations (full_name, email, phone, password, ticket_type, institution, event, additional_request, registration_date, verification_status, payment_status, age)
                    VALUES (:full_name, :email, :phone, :password, :ticket_type, :institution, :event, :additional_request, NOW(), 'Pending', 'Pending', :age)";
            
            $stmt = $conn->prepare($sql);
            $stmt->execute([
                'full_name' => $full_name,
                'email' => $email,
                'phone' => $phone,
                'password' => $password,
                'ticket_type' => $ticket_type,
                'institution' => $institution,
                'event' => $event['event_name'],
                'additional_request' => $additional_request,
                'age' => $age // Bind the age field
            ]);

            $registration_id = $conn->lastInsertId();  // Get the last inserted ID
            echo "Registration successful. Your Registration ID is: " . $registration_id;
        } 
    } else {
        echo "Invalid event selection.";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Registration</title>
</head>
<body>
    <h1>Event Registration</h1>
    <form action="register.php" method="POST">
        <!-- Event Dropdown -->
        <label for="event_id">Select Event:</label>
        <select id="event_id" name="event_id" onchange="updateEventDetails()" required>
            <option value="">-- Select Event --</option>
            <?php foreach ($events as $event): ?>
                <option value="<?= $event['id'] ?>"><?= $event['event_name'] ?></option>
            <?php endforeach; ?>
        </select><br><br>

        <!-- Ticket Type Selection -->
        <label for="ticket_type">Ticket Type:</label>
        <select id="ticket_type" name="ticket_type" onchange="updateEventDetails()" required>
            <option value="Individual">Individual</option>
            <option value="Team">Team</option>
        </select><br><br>

        <!-- User Info -->
        <label for="full_name">Full Name:</label>
        <input type="text" id="full_name" name="full_name" required><br><br>

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" min="1" required><br><br>


        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>

        <!-- Toggle Buttons -->
        <label for="toggle-type">Select Type:</label>
        <div id="toggle-type">
            <input type="radio" id="school" name="type" value="School" onclick="fetchInstitutes()" checked>
            <label for="school">School</label>

            <input type="radio" id="college" name="type" value="College" onclick="fetchInstitutes()">
            <label for="college">College (above 12)</label>

            <input type="radio" id="open" name="type" value="Other" onclick="fetchInstitutes()">
            <label for="college">Open to all</label>
        </div>
        <br>

        <!-- Dropdown for Institution -->
        <label for="institution">Institution/Organization:</label>
        <select id="institution" name="institution" required>
            <option value="">-- Select Institution --</option>
        </select>
        <br><br>




        <label for="additional_request">Additional Request (Optional):</label>
        <textarea id="additional_request" name="additional_request"></textarea><br><br>

        <button type="submit">Register</button>
    </form>
    <script>
function fetchInstitutes() {
    // Get the selected type
    const selectedType = document.querySelector('input[name="type"]:checked').value;

    // AJAX request to the same register.php file
    fetch(`register.php?type=${encodeURIComponent(selectedType)}`)
        .then(response => response.json())
        .then(data => {
            const dropdown = document.getElementById('institution');
            
            // Clear existing options
            dropdown.innerHTML = '<option value="">-- Select Institution --</option>';

            // Check if data contains error
            if (data.error) {
                console.error(data.error);
                return;
            }

            // Populate dropdown with fetched institutions
            data.forEach(institute => {
                const option = document.createElement('option');
                option.value = institute.Institute_Name;
                option.textContent = institute.Institute_Name;
                dropdown.appendChild(option);
            });
        })
        .catch(error => console.error('Error fetching institutions:', error));
}
</script>




</body>
</html>
