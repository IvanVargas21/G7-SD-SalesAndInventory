<?php include_once('includes/load.php'); ?>
<?php
$req_fields = array('username', 'password');
validate_fields($req_fields);
$username = remove_junk($_POST['username']);
$password = remove_junk($_POST['password']);

if (empty($errors)) {
    $user = find_by_username($username);

    if ($user) {
        // User found, check password
        if (authenticate($username, $password)) {
            // Password is correct, proceed with login
            // Create session with id
            $session->login($user['id']);
            // Update Sign in time
            updateLastLogIn($user['id']);
            // Redirect user to group home page by user level
            if ($user['user_level'] === '1') {
                $session->msg("s", "Hello " . $user['username'] . ", Welcome to OSWA-INV.");
                redirect('admin.php', false);
            } elseif ($user['user_level'] === '2') {
                $session->msg("s", "Hello " . $user['username'] . ", Welcome to OSWA-INV.");
                redirect('special.php', false);
            } else {
                $session->msg("s", "Hello " . $user['username'] . ", Welcome to OSWA-INV.");
                redirect('home.php', false);
            }
        } else {
            // Password is incorrect
            $session->msg("d", "Incorrect password.");
            redirect('index.php', false);
        }
    } else {
        // User not found
        $session->msg("d", "Username not found.");
        redirect('index.php', false);
    }
} else {
    // Validation errors
    $session->msg("d", $errors);
    redirect('login_v2.php', false);
}
?>
