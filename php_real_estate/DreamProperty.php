<?php 
$title = "DreamProperty";
include_once 'inc/header.php';

// user has to be logged in as a normal user to view this page
if (!$_SESSION['logged_in'] || $_SESSION['role'] != 'User') {
    $_SESSION['alertMessage'] = 'You do not have access to this page, you must be logged in as a user.';
    header('Location: login');
    die(); 
} 

?>
<div class="row">
    <div class="col-12">
        <h1 class="title">DreamProperty</h1>

        <p class="welcome">Hi,
            <?php echo $_SESSION['first_name']; ?>
        </p>

        <?php 
            if (isset($_SESSION['alertMessage'])) { 
            echo "<p>".$_SESSION['alertMessage']."</p>"; 
            unset($_SESSION['alertMessage']);
            }; 
        ?>

        <table class="table table-responsive table-striped">
            <thead>
                <tr>
                    <th>Photo</th>
                    <th>Title</th>
                    <th>Type</th>
                    <th>City</th>
                    <th>Price</th>
                    <th>Address</th>
                    <th>Description</th>
                    <th>Remove From DreamProperty</th>
                </tr>
            </thead>
            <tbody>
                <!-- fetch properties from the database -->
    <?php
    /* get all the rows of the property ID where the user email matches the user that's logged in */
   
    $sql = "SELECT properties.property_id, properties.image_url, properties.title, properties.type, properties.city, properties.price, properties.address, properties.description FROM user_DreamProperty INNER JOIN properties ON user_DreamProperty.property_id = properties.property_id
    WHERE user_DreamProperty.email_address=?";
    
    $stmt = $db->prepare($sql);
    
    if ($stmt === false) {
    printf("Errormessage: %s\n", $db->error);
    die();
    }
    
    $stmt->bind_param('s', $_SESSION['email_address']);  
    
    $stmt->execute();
    
    $results = $stmt->get_result();
    
    $output = "";            
    if ($results->num_rows > 0) {
        // output data of each row
        while($row = $results->fetch_assoc()) {
            $output .= "<tr><td><a href='./view-property?id=".$row["property_id"]."'><img src='".$row["image_url"]."' class='thumbnail'></a></td>";
            $output .= "<td><a class='DreamProperty-link' href='./view-property?id=".$row["property_id"]."'>".$row["title"]."</a></td><td>".$row["type"]."</td>";
            $output .= "<td>".$row["city"]."</td><td>$" . number_format($row["price"])."</td>";
            $output .= "<td>".$row["address"]."</td><td>".$row["description"]."</td>";
            $output .= "<td><a href='process/remove-DreamProperty.php?id=".$row["property_id"]."' class='btn btn-danger'>Remove</a></td></tr>";
        }
    } else {
        $output = "<p>You have no properties saved to your DreamProperty</p>";
    }
    
    // close statement
    $stmt->close();

    
    echo $output;
    
    ?>



            </tbody>
        </table>
    </div>
</div>
<?php include_once 'inc/footer.php'; ?>
