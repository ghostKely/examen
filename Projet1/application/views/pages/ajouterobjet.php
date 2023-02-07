
        <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap3/css/ajouter.css'); ?>">
    <section>
<div id="container">
  <h2>&bull; Nouveau produit &bull;</h2>
  <div class="underline">
  </div>
  <div class="icon_wrapper">

  </div>
  <form action="#" method="get" id="contact_form">
    <div class="nom">
      <label for="nom">Nom :</label>
      <input type="text" name="nom" id="nom" required>
    </div>
    <div class="prix">
      <label for="prix">Prix</label>
      <input type="text" name="prix" id="prix" required>
    </div>
    <div class="categorie">
      <select name="categorie" id="categorie" required>
        <?php foreach ($allcategorie as $categorie) {
        }?>
        <option disabled hidden selected>Vetement</option>
        <option>Mobilier</option>
        <option>Technologie</option>
        <option>Divers</option>
      </select>
    </div>
    <div class="photo">
      <label for="photo">Image :</label>
      <input type="hidden" name="MAX_FILE_SIZE" value="100000">
      <input type="file" name="photo" id="photo" required>
    </div><br>
    <div class="submit">
      <input type="submit" value="Validez" id="form_button" />
    </div>
  </form>
  </div>
  </form>
</div>
</section>