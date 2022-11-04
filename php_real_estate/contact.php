<?php
$title = "Contact";
include_once 'inc/header.php';
//include_once 'image.php';
?>

    <div class="row">
        <div class="col-12">
            <h1 class="title">Contact Us</h1>

        </div>
    </div>

    <section>

        <div class="row">

            <div class="col-lg-6 col-sm-12 contact-info">

            <span class="bold"></span> FRANKPAUL'S IT CONSULT<br>
                <span class="bold">PHONE:</span> +233548628673/ 233206126524<br>
                    <span class="bold">EMAIL:</span> BEMWUS@GMAIL.COM<br>
                    <span class="bold">ADDRESS:</span><br>
                      POST OFFICE BOX 177  <br> AHENSAN,KUMASI.
                      <br> KOTOKO II AVENUE ST.
                        <br> 2022
                
            </div>

            <div class="col-lg-6 col-sm-12 contact-form">
                <form>
                    <div class="form-group" id="name-group">
                        <label for="full-name">Name:</label>
                        <input type="text" class="form-control" placeholder="Your Name">
                    </div>
                    <div class="form-group" id="email-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" placeholder="you@email.com">
                    </div>
                    <div class="form-group">Your Message:
                    <div id="messagebox"><textarea id="textarea" rows="8" cols="30" maxlength="300" placeholder="Max length 300 characters"></textarea></div>
                    </div>
                    <div id="textarea_feedback"></div>
                    <br>

                    <input type="button" class="button" value="SEND" onclick="validateForm()">
                </form>
            </div>

        </div>

       <!-- <script src="js/character-counter.js" type="text/javascript"></script>-->
          
        <?php include_once 'inc/footer.php'; ?>
