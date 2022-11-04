<?php
$title = "Home";
include_once 'inc/header.php';
?>
    <header class="masthead">
        <div class="overlay">
            <div class="container featured-text-container">
                <p class="featured-text1">
                    <a href="./search?city=Accra">ACCRA</a>
                    <a href="./search?city=Kumasi">KUMASI</a>
                    <a href="./search?city=Takoradi">TAKORADI</a>
                </p>
                <p class="featured-heading">WELCOME TO THE REAL ESTATE COMPANY OF<br> FRANKPAUL'S CONSULT<br></p>
                <p class="featured-text2">BROWSE THROUGH OUR SITE FOR<br>HIGH END LUXURY HOUSES &amp; GRAND SECTIONS WITH BEAUTIFUL VIEWS</p>
                <section>

                    <div class="row">
                        <div class="col-12 search-container">

                            <?php include_once 'inc/search-form.php'; ?>

                        </div>
                    </div>
                </section>
            </div>
        </div>
    </header>
    <!-- container-fluid -->
    </div>
    <div class="container">

        <section>
            <h1 class="title">All Properties</h1>
            <div class="row align-items-center">

                <?php include_once 'inc/homepage-listings.php'; ?>

            </div>
        </section>
    </div>

    <?php include_once 'inc/footer.php'; ?>
