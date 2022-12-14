<?php
session_start();
 
// this file adds a property to the user's dreamproperty, runs when heart icon is clicked
 
// only logged in users can run this script
if (!$_SESSION['logged_in'] || $_SESSION['role'] != 'User') {
$_SESSION['alertMessage'] = 'You do not have access to this page, you must be logged in as a user.';
  header('Location: ../login');
  die();
}
 
// if there is nothing in the get parameter, redirect back to the dreamproperty page (if the user tries to visit process/add-dreamproperty.php)
if (!isset($_GET['id'])) {
  header('Location: ../dreamproperty');
  die();
}
 
// create database connection
include_once '../inc/config.php';
 
// check that the user is logged in and is a normal user, not an admin or agent
if (isset($_SESSION['logged_in']) && $_SESSION['role'] == "User") {
 
    // if the id is set as the get parameter, run the function
    if (isset($_GET['id'])) {
   
    // get id set in get parameter and the email address of the logged in user
    $id = $_GET['id'];
    $email =  $_SESSION['email_address'];
   
    // check the database for an id that matches both that email address and id in the dreamproperty table
    $sql = "SELECT property_id FROM user_dreamproperty WHERE email_address=? AND property_id=?";
   
    $stmt = $db->prepare($sql);
       
    // bind parameters
    $stmt->bind_param('si', $email, $id);
 
     // running insert statement
    if ($stmt->execute() === FALSE) {
        echo "Error: " . $db->error;
        die();
    }
 
    // bind result variables
    $stmt->bind_result($stored_id);
 
    // fetch value
    $stmt->fetch();
 
    // close statement
    $stmt->close();
 
    // check if id matches one that's in the database
    if ($stored_id == $id) {
 
    $_SESSION['alertMessage'] = "This property is already added to your dreamproperty";
 
    // go back to the dreamproperty page
    header("Location: ../dreamproperty");
    die();
   
    // if the id's do not match, it is not already in the user's dreamproperty and can be added
    } elseif ($stored_id != $id) {
 
    $sql = "INSERT INTO user_dreamproperty SET property_id=?, email_address=?";
       
    $stmt = $db->prepare($sql);
       
    $stmt->bind_param('is', $id, $email);
 
    // running insert statement
    if ($stmt->execute() === false) {
       echo "Error: " . $db->error;
        die();
    }
 
    // close statement
    $stmt->close();
                     
    // takes the user to their dreamproperty and shows a success message
    $_SESSION['alertMessage'] = "Property added to dreamproperty";
    header("Location: ../dreamproperty");
    die();
   
    }
}
} elseif (isset($_SESSION['logged_in']) && $_SESSION['role'] == "Agent") {
    // show an error message
    $_SESSION['alertMessage'] = "You must be logged in as a user to view your dreamproperty.";
    header("Location: ../login");
    die();
   
} elseif (!isset($_SESSION['logged_in'])) {
    // show an error message
    $_SESSION['alertMessage'] = "Please log in to add this property to your dreamproperty.";
    header("Location: ../login");
    die();
   
} else {
    header("Location: ../login");
    die();
}