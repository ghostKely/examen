<!DOCTYPE html>
<html>
<head>
</head>
<body>

<form action="try" >
    <div class="form-group">
        Bonjour <?php echo $pseudo ;?>
        Votre email : <?php echo $email; ?>
        <?php if ($online):?> Vous etes en ligne
        <?php else:?>Vous etes mort 
        <?php endif;?>
    </div>
</form>    

</body>
</html>