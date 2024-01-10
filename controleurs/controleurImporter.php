<?php

if (isset($_POST['importer'])){
	$title=title_song2000($connexion,"song2000");
	$artist=artist_song2000($connexion,"song2000");
	$nomGenre=genre_song2000($connexion,"song2000");
	$filename=filename_song2000($connexion,"song2000");
	foreach($title as $title) {
		foreach($filename as $filename) {
		$identifiant_chanson=getrandmax();
	}}
	insere_chanson_groupe($connexion,"Chanson", $title, $artist, $identifiant_chanson);
	insere_genre($connexion,"Chanson",$nomGenre);
	insere_filename_version($connexion,"Version", $filename, $identifiant_chanson); 
	
	
}

?>
