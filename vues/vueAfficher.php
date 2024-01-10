<?php if(isset($message)) { ?>
    <p style="background-color: yellow;"><?= $message ?></p>
<?php } ?>
<?php if(isset($msg)) { ?>
    <p style="background-color: yellow;"><?= $msg ?></p>
<?php } ?>            
<h2>Liste des chansons :</h2>
<ul>
<?php foreach($chanson as $chanson) { ?>
    <li><strong>
    <h3>titre : <?= $chanson['titreC']  ?></h3>
    </strong>
    </li>
    <br>
    
<?php foreach(version_chanson($connexion, "Version", $chanson['idC']) as $v) { ?>
    <li>
     version : <?= implode(" ",$v) //implode permet de transformer un tableau en chaine de caractère, ainsi pour chaque version dont l'idc correspond à l'idc de la chanson, on affiche son nom en chaine de caractère?>
    </li>
    <br>
   
<?php } ?>

<?php } ?>
</ul> 
