<section id="testimonial">
        <div class="container">
            <div class="col-md-6"><br>
                <div style="height:75px;width:75px;border-radius:100%;background-color:red">sary</div><hr>
                <i><strong><?php echo $profil['nom'] ; ?> <?php echo $profil['prenom'] ; ?></strong></i><br>
                <i>Contact :  <?php echo $profil['email'] ; ?></i><br>
                <i>date de naissance:  <?php echo $profil['prenom'] ; ?></i><br>
                <i>Genre:  <?php echo $profil['prenom'] ; ?></i><br>
                <?php 
                    if ($profil['isadmin']==1) { ?>
                    
                    <i style="color:red;"><b>Admin</b></i>
            </div>
                <?php } ?>
            
            <div class="row">
                <div class="col-lg-7 mx-auto text-center mb-6">
                    <h5>Featured Restaurants</h5>
                </div>
            </div>
            <div class="row">
                <?php for ($i=0; $i < sizeof($objets) ; $i++) { ?>
                    <div class="col-sm-6 col-lg-3 mb-3 mb-md-0 h-100 pb-4">
                        <div class="card card-span h-100">
                            <div class="position-relative"> <img class="img-fluid rounded-3 w-100" src="<?php echo base_url('assets'); ?>/img/object/burger.png" alt="..." />
                                <div class="card-img-overlay ps-0">
                                    <span class="badge bg-danger p-2 ms-3"><?php echo $objets[$i]['prix']." AR"; ?></span><span class="badge bg-primary ms-2 me-1 p-2">
                                    <i class="fas fa-clock me-1 fs-0"></i><span class="fs-0">Fast</span></span>
                                </div>
                            </div>
                            <div class="card-body px-0">
                            <h5 class="fw-bold text-1000 text-truncate"><?php echo $objets[$i]['nom']; ?></h5><span class="badge bg-soft-danger py-2 px-3"><span class="fs-1 text-danger"><?php echo $objets[$i]['username']; ?></span></span>
                            </div><a class="stretched-link" href="#"></a>
                        </div>
                    </div>

                <?php } ?>

            </div>
        </div>
</section>
