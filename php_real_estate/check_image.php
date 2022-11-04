<?php
if (! empty($_GET['id'])){

    //DB details
    $dbHost = 'localhost';
    $dbUsername = 'root';
    $dbPassword = '******';
    $dbName = 'php_real_estate';

    //Create connection and slelect DB
    $db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

    //Check connection
    if($db->connet_error){
        die("connection failed:". $db->connection_error);
    }
    //Get image from database
    $result = $db->query ("SELECT image From Images where id ={$_GET[id']}");
    if ($result-

}