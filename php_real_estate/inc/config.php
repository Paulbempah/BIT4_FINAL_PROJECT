<?php
// database credentials 
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'real_estate');

// new database connection
$db = new mysqli(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);

// check connection
if ($db->connect_errno) {
    die("Connection failed: " . $db->connect_errno);
}
