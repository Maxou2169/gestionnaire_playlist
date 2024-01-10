<?php 
$message = "";
$msg = " ";

// recupération des chansons
$chanson = getInstances($connexion, "Chanson");
if($chanson == null || count($chanson) == 0) {
	$message .= "Aucune chanson n'a été trouvée dans la base de données !";
}

// recupération des versions liées aux chansons
foreach($chanson as $ch) {
	$c=implode($ch);
	$idC = getIdc($connexion, "Chanson",$ch['titreC']);
	$i=implode($idC);
	$version = version_chanson($connexion, "Version", $i);
	if($version == null || count($version) == 0) {
		$msg .= "Aucune version n'a été trouvée pour $c !";
	}
}
$instance_version=getInstances($connexion, "Version");





