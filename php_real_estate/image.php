<?php
if(iseet($_POST["submit"])){
    $check = getimagesize($_FILES['image']['tmp_image']);
    if($check !== false){
        $image =$_FILES['image']['tmp_image']
        $imgContent = addcslashes(file_get_contents($image));

        /*
        * Insert image data into database
        */
        
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
    $dataTime = date("Y-m-d H:i:s");

    //Insert image content into database 
    $insert = $db->query("INSERT into images (image, created) VALUES ('$imgContent' , '$dataTime')");
    if ($insert) {
        echo "File uploaded successfully.";
    }else{
        echo "File uoload failed, please try again.";
    }else{
        echo "Please select an image file to upload.";
    }

    }
}