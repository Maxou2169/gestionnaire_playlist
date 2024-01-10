<?php 
//on a décidé, même si on sait que c'est pas la meilleure solution possible, que l'utilisateur choisisse parmis 4 choix de playlists différentes, la playlist dans laquelle
//il veut insérer les chansons. On a donc crée 4 tables différentes...
$nom_genre=get_name_genre($connexion, "Genre");

if(isset($_POST['boutonValider'])) { // formulaire soumis
	$genre=$_POST['genre'];
	$long = 0;
	$nomP=$_POST['nomPlaylist'];
	if($genre == "defaut") {
		while($long<1140) { //tant que la longueur de la playlist est inferieur à 20 min on ajoute une chanson au hasard
				$title = random_title($connexion, "Chanson");
				$t = implode($title);
				$idc = getIdc($connexion, "Chanson", $t); //récupération de l'idc de la chanson
				$i = implode($idc);//$idc[0][3]
				$version = get_nom_fichier_idc($connexion, "Version", $i); //recupération d'un nom de fichier au hasard correspondant a la chanson
				$v = implode($version);
				$Verification=getPlaylisteByName($connexion, $nomP, $v); //on recupère les instances de la playlist
				if($Verification == FALSE || count($Verification) == 0) {
					$lenght = length_version($connexion, "Version",$i); //on recupère la longueur de la version
					$l = implode($lenght); 
					if(($long+$l)>1260) {
						continue; //si la longueur de la chanson fait dépasser de plus d'une minute les 20 min alors on recommence la boucle
					}
					else {						
					$inserer = insere_chanson_playlist($connexion,$nomP, $v); //c'est inférieur à 21 min alors on peut intégrer la chanson dans la playlist
					$long = $long + $l; //on ajoute la longueur de chanson à la longueur totale de la playlist
				}
			}
		}
		$nb = countInstances($connexion, $nomP);
		$msg = "La $nomP a été crée, elle comporte: $nb chansons et sa durée est de $long secondes.";
	}
		else {
			$i = 0;
			while($long<720) { //tant que la majorité de la playlist n'est pas composée de chanson du genre inscrit on ajoute des chansons de ce genre
				$title = random_title_genre($connexion, "Chanson", $genre);
				$t = implode($title);
				$idc = getIdc($connexion, "Chanson", $t);
				$i = implode($idc);
				$version = get_nom_fichier_idc($connexion, "Version", $i);
				$v = implode($version);
				$Verification=getPlaylisteByName($connexion, $nomP, $v);
				if($Verification == FALSE || count($Verification) == 0) {
					$lenght = length_version($connexion, "Version",$i);
					$l = implode($lenght);						
					$inserer = insere_chanson_playlist($connexion, $nomP, $v);
					$long = $long + $l;
					$i++;
				}
			}
			while($long>720 && $long<1140) {
				$title = random_title($connexion, "Chanson");
				$t = implode($title);
				$idc = getIdc($connexion, "Chanson", $t);
				$i = implode($idc);
				$version = get_nom_fichier_idc($connexion, "Version", $i);
				$v = implode($version);
				$Verification=getPlaylisteByName($connexion, $nomP, $v);
				if($Verification == FALSE || count($Verification) == 0) {
					$lenght = length_version($connexion, "Version",$i);
					$l = implode($lenght);
					if(($long+$l)>1260) {
						continue;
					}
					else {						
					$inserer = insere_chanson_playlist($connexion,$nomP, $v);
					$long = $long + $l;
				}
			}
		}
		$nb = countInstances($connexion, $nomP);
		$pourcentage = ($i*100/$nb);
		$message = "La $nomP a été crée, elle comporte: $nb chansons, dont $pourcentage% du genre $genre pour une durée totale de $long secondes.";
	}
	
}



?>


