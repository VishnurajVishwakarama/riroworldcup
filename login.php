<?php
// Include the database connection
include('db_connection.php');

// Start session to manage user login state
session_start();

// Handle login attempt
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve user credentials
    $emailOrPhone = $_POST['email_or_phone'];
    $password = $_POST['password'];

    // Check if the input is an email or phone number
    if (filter_var($emailOrPhone, FILTER_VALIDATE_EMAIL)) {
        // Query to check if the input is an email
        $query = "SELECT registration_id, full_name, password FROM registrations WHERE email = :email";
        $stmt = $conn->prepare($query);
        $stmt->execute(['email' => $emailOrPhone]);
    } else {
        // Query to check if the input is a phone number
        $query = "SELECT registration_id, full_name, password FROM registrations WHERE phone = :phone";
        $stmt = $conn->prepare($query);
        $stmt->execute(['phone' => $emailOrPhone]);
    }

    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user && password_verify($password, $user['password'])) {
        // Set session variables on successful login
        $_SESSION['registration_id'] = $user['registration_id']; // Update to registration_id
        $_SESSION['full_name'] = $user['full_name'];

        // Redirect to a protected page (dashboard or event page)
        header("Location: dashboard.php");
        exit();
    } else {
        $error_message = "Invalid email/phone or password.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>

    <?php if (isset($error_message)): ?>
        <p style="color:red;"><?php echo $error_message; ?></p>
    <?php endif; ?>

    <form action="login.php" method="POST">
    <label for="email_or_phone">Email or Phone:</label>
    <input type="text" id="email_or_phone" name="email_or_phone" required><br><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>

    <button type="submit">Login</button>
</form>


    <p>Don't have an account? <a href="register.php">Register here</a></p>
</body>
</html>
