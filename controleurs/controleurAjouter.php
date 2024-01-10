<?php 
if(isset($_POST['boutonValider'])) { // formulaire soumis

	$titreC = $_POST['titreC']; // recuperation de la valeur saisie
	$dateV=$_POST['date'];
	$durée=$_POST['durée'];
	$nomfichier=$_POST['nomfichier'];
	$verification_1 = getChansonByName($connexion, $titreC);
	$verification_2 = getFichierByName($connexion, $nomfichier);
	$numeroV=countInstances($connexion, "Version") + 1;
	$idC=countInstances($connexion, "Chanson") +1;
	$nomG=$_POST['groupe'];
	$genre=$_POST['genre'];

	if($verification_1 == FALSE || count($verification_1) == 0) { // pas de chanson avec ce nom, insertion
		$insertion_1 = insertChanson($connexion, $idC, $titreC, $dateV,$nomG,$genre);
		if($insertion_1 == TRUE) {
			$message = "La chanson $titreC a bien été ajoutée !";
		}
		else {
			$message = "Erreur lors de l'insertion de la chanson $titreC.";
		}
	}
	else {
		$message = "Une chanson existe déjà avec ce nom ($titreC).";
	}
	
	
	
	if($verification_2 == FALSE || count($verification_2) == 0) { // pas de version avec ce nom, insertion
		$insertion_2 = insertVersion($connexion,$numeroV, $dateV, $durée, $nomfichier, $idC);
		if($insertion_2 == TRUE) {
			$message = "La Version $nomfichier a bien été ajoutée !";
		}
		else {
			$message = "Erreur lors de l'insertion de la version $nomfichier.";
		}
	}
	else {
		$message = "Une Version existe déjà avec ce nom ($nomfichier).";
	}
	
	
}

$nomG=get_name_groupe($connexion, "Groupe");

$nom_genre=get_name_genre($connexion, "Genre");




?>
