<?php 
$message = "";
$msg = " ";

if(isset($_POST['boutonAjouter'])) { //si le bouton ajouter est saisis
	$titreP = $_POST['titreP']; //recupération des données saisis
	$nomP = $_POST['nomPlaylist'];
	$Verification=getPlaylisteByName($connexion, $nomP, $titreP);
	if($Verification == FALSE || count($Verification) == 0) { //si les vérifications sont fausses, alors il n'existe pas de chanson avec ce nom, on peut donc l'ajouter
		$inserer = insere_chanson_playlist($connexion, $nomP, $titreP);
		$instances=getInstances($connexion, $nomP);
	}
	else {
		$message = "Une chanson existe déjà avec ce nom ($titreP).";
	}
}

if(isset($_POST['boutonSupprimer'])) {
	$titreP = $_POST['titreP'];
	$nomP = $_POST['nomPlaylist'];
	$Verification=getPlaylisteByName($connexion, $nomP, $titreP); //si les vérifications sont vraies, alors il existe une chanson avec ce nom, on peut donc la supprimer
	if($Verification == TRUE || count($Verification) == 1) {
		$supprimer = supprimer_titre_playlist($connexion, $nomP, $titreP);
		$instances=getInstances($connexion, $nomP);
	}
	else {
		$msg = "Cette chanson n'existe pas";
	}
}
$instances_0=getInstances($connexion, "Playlist");
$instances_1=getInstances($connexion, "Playlist1");
$instances_2=getInstances($connexion, "Playlist2");
$instances_3=getInstances($connexion, "Playlist3");	

?>
<?php if(isset($message)) { ?>
	<p style="background-color: yellow;"><?= $message ?></p>
<?php } ?> 

<?php if(isset($msg)) { ?>
	<p style="background-color: yellow;"><?= $message ?></p>
<?php } ?> 
