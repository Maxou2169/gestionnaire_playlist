<?php 

// connexion à la BD, retourne un lien de connexion
function getConnexionBD() {
	$connexion = mysqli_connect(SERVEUR, UTILISATRICE, MOTDEPASSE, BDD);
	if (mysqli_connect_errno()) {
	    printf("Échec de la connexion : %s\n", mysqli_connect_error());
	    exit();
	}
	mysqli_query($connexion,'SET NAMES UTF8'); // noms en UTF8
	return $connexion;
}

// déconnexion de la BD
function deconnectBD($connexion) {
	mysqli_close($connexion);
}

// nombre d'instances d'une table $nomTable
function countInstances($connexion, $nomTable) {
	$requete = "SELECT COUNT(*) AS nb FROM $nomTable";
	$res = mysqli_query($connexion, $requete);
	if($res != FALSE) {
		$row = mysqli_fetch_assoc($res);
		return $row['nb'];
	}
	return -1;  // valeur négative si erreur de requête (ex, $nomTable contient une valeur qui n'est pas une table)
}

// retourne les instances d'une table $nomTable
function getInstances($connexion, $nomTable) {
	$requete = "SELECT * FROM $nomTable";
	$res = mysqli_query($connexion, $requete); //retourne vrai si la requete est valide
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);//retourne ce qui corresponds aux requêtes
	return $instances;
}

// retourne les informations sur la chanson nommée $chanson
function getChansonByName($connexion, $titreC) {
	$titreC = mysqli_real_escape_string($connexion, $titreC); // sécurisation de $titreC
	$requete = "SELECT * FROM Chanson WHERE titreC = '".$titreC."'";
	$res = mysqli_query($connexion, $requete);
	$chanson = mysqli_fetch_array($res, MYSQLI_ASSOC);
	return $chanson;
}

// retourne les informations sur le fichier nommée $nomfichier
function getFichierByName($connexion, $nomfichier){
	$nomfichier = mysqli_real_escape_string($connexion, $nomfichier); // sécurisation de $titreC
	$requete = "SELECT nomfichier FROM Version WHERE nomfichier = '".$nomfichier."'";
	$res = mysqli_query($connexion, $requete);
	$Version = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $Version;
}

// insère une nouvelle chanson nommée $titreC
function insertChanson($connexion, $idC ,$titreC, $dateC, $nomG, $genre) {
	$idC = mysqli_real_escape_string($connexion, $idC);
	$titreC = mysqli_real_escape_string($connexion, $titreC);
	$dateC = mysqli_real_escape_string($connexion, $dateC);
	$nomG = mysqli_real_escape_string($connexion, $nomG);
	$genre = mysqli_real_escape_string($connexion, $genre);
	$requete = "INSERT INTO Chanson (idC,titreC,dateC,nomG,genre) VALUES ('".$idC."','".$titreC."','".$dateC."','".$nomG."','".$genre."')";
	$res = mysqli_query($connexion, $requete);
	return $res;
}

// retourne l'identifiant d'une chanson $titreC
function getIdc($connexion,$table, $titreC) {
	$titreC = mysqli_real_escape_string($connexion, $titreC);
	$requete = 'SELECT idC FROM Chanson WHERE titreC LIKE \'%'.$titreC.'%\'';
	$res = mysqli_query($connexion, $requete);
	$instances = mysqli_fetch_array($res, MYSQLI_ASSOC);
	return $instances;
}

// insère une nouvelle version
function insertVersion($connexion,$numeroV, $dateV, $dureeV, $nomfichier, $idC) {
	$numeroV = mysqli_real_escape_string($connexion, $numeroV);
	$dateV = mysqli_real_escape_string($connexion, $dateV);
	$dureeV = mysqli_real_escape_string($connexion, $dureeV);
	$nomfichier = mysqli_real_escape_string($connexion, $nomfichier);
	$requete = "INSERT INTO Version (numeroV,dateV, dureeV, nomfichier,idC) VALUES ('v".$numeroV."','".$dateV."','".$dureeV."','".$nomfichier."','".$idC."')";
	$res = mysqli_query($connexion, $requete);
	return $res;
}

// cherche la version correspondant à la chanson
function version_chanson($connexion, $table, $idC) {
	$idC = mysqli_real_escape_string($connexion, $idC);
	$requete = 'SELECT * FROM Version WHERE idC LIKE  \'%'.$idC.'%\';';
	$res = mysqli_query($connexion, $requete);
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $instances;
}

//retoune l'identifiant d'une chanson
function idC_chanson($connexion, $table) {
	$requete = 'SELECT idC FROM Chanson';
	$res = mysqli_query($connexion, $requete);
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $instances;
}


//retourne le nom des groupes
function nom_groupe($connexion, $table) {
	$requete = 'SELECT nomG FROM Groupe';
	$res = mysqli_query($connexion, $requete);
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $instances;
}

//retourne le titre
function title_song2000($connexion, $table) {
	$requete = 'SELECT title FROM dataset.songs2000';
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $instances;
}

//retourne longueur d'une chanson
function length_version($connexion, $table, $idc) {
	$idc = mysqli_real_escape_string($connexion, $idc);
	$requete = 'SELECT dureeV FROM Version WHERE idC LIKE \'%'.$idc.'%\';';
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_array($res, MYSQLI_ASSOC);
	return $instances;
}

//retourne le nom de l'artiste
function artist_song2000($connexion, $table) {
	$requete = 'SELECT artist FROM dataset.songs2000';
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $instances;
}

//retourne le genre
function genre_song2000($connexion, $table) {
	$requete = 'SELECT genre, filename FROM dataset.songs2000';
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $instances;
}

//retourne le nom du fichier
function filename_song2000($connexion, $table) {
	$requete = 'SELECT filename FROM dataset.songs2000';
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $instances;
}

//insère la chanson correspondant à l'artiste liée à un identifiant
function insere_chanson_groupe($connexion, $table, $titreC, $nomG, $idC, $genre) {
	$titreC = mysqli_real_escape_string($connexion, $titreC);
	$nomG = mysqli_real_escape_string($connexion, $nomG);
	$idC = mysqli_real_escape_string($connexion, $idC);
	$genre = mysqli_real_escape_string($connexion, $genre);
	$requete = "INSERT INTO Chanson ('titreC', 'nomG', 'nomfichier', 'idc', 'genre') VALUES ('".$titreC. "','". $nomG . "','". $nomfichier . "','" .$idc. "','".$genre."')";
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $instances;
}

//insère le genre
function insere_genre($connexion, $table,$genre) {
	$genre = mysqli_real_escape_string($connexion, $genre);
	$requete = "INSERT INTO Gerne ('genre') VALUES ('".$genre. "')";
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $instances;
}

//insere le nom du fichier dans la version liée à un identifiant
function insere_filename_version($connexion, $table, $nomfichier, $idC) {
	$nomfichier = mysqli_real_escape_string($connexion, $nomfichier);
	$idC = mysqli_real_escape_string($connexion, $idC);
	$requete = "INSERT INTO Version ('nomfichier', 'idC') VALUES ('".$nomfichier."','".$idc."')";
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $instances;
}

//retourne un titre au hasard
function random_title($connexion, $table) {
	$requete = 'SELECT titreC FROM Chanson ORDER BY rand()';
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_array($res, MYSQLI_ASSOC);
	return $instances;
}

//insere la chanson nommée $title dans la playlist
function insere_chanson_playlist($connexion, $table, $title) {
	$title = mysqli_real_escape_string($connexion, $title);
	$requete = "INSERT INTO $table (titreP) VALUES ('".$title."')";
	$res = mysqli_query($connexion,$requete);
	return $res;
}

//recupère la nom du fichier d'une version qui correspond à l'idc d'une chanson
function get_nom_fichier_idc($connexion, $table, $idc) {
	$idc = mysqli_real_escape_string($connexion, $idc);
	$requete ='SELECT nomfichier FROM Version WHERE idC LIKE \'%'.$idc.'%\' ORDER BY rand()';
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_array($res, MYSQLI_ASSOC);
	return $instances;
}

//retourne le titre d'une chanson
function get_title_chanson($connexion, $table) {
	$requete = 'SELECT titreC FROM Chanson';
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_array($res, MYSQLI_ASSOC);
	return $instances;
}

//retourne le nom du groupe
function get_name_groupe($connexion, $table) {
	$requete ='SELECT nomG FROM Groupe';
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $instances;
}

//retourne le nom du genre
function get_name_genre($connexion, $table) {
	$requete ='SELECT genre FROM Genre';
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $instances;
}

//retourne les chansons qui corrrespondent à l'$idc
function select_chanson_idc($connexion, $table, $idc) {
	$idc = mysqli_real_escape_string($connexion, $idc);
	$requete ='SELECT titreC FROM Chanson WHERE idC LIKE \'%'.$idc.'%\';';
	echo $requete;
	$res = mysqli_query($connexion,$requete);
	$instances = mysqli_fetch_array($res, MYSQLI_ASSOC);
	return $instances;
}

//retourne les instances d'une playlists dont le titre est $name
function getPlaylisteByName($connexion, $table, $name){
	$table = mysqli_real_escape_string($connexion, $table);
	$name = mysqli_real_escape_string($connexion, $name);
	$requete = "SELECT titreP FROM $table WHERE titreP = '".$name."'";
	$res = mysqli_query($connexion, $requete);
	$Version = mysqli_fetch_all($res, MYSQLI_ASSOC);
	return $Version;
}

//tire au hasard un titre qui correspond au genre indiquée
function random_title_genre($connexion, $table, $genre) {
	$genre = mysqli_real_escape_string($connexion, $genre);
	$requete = 'SELECT titreC FROM Chanson WHERE genre LIKE \'%'.$genre.'%\' ORDER BY rand()';
	$res = mysqli_query($connexion, $requete);
	$instances = mysqli_fetch_array($res, MYSQLI_ASSOC);
	return $instances;
}

//supprimer la chanson $titreP de la playlist $table
function supprimer_titre_playlist($connexion, $table, $titreP) {
	$table = mysqli_real_escape_string($connexion, $table);
	$titreP = mysqli_real_escape_string($connexion, $titreP);
	$requete = "DELETE FROM $table WHERE titreP LIKE '$titreP'";
	$res = mysqli_query($connexion, $requete);
	return $res;
}

 
?>
