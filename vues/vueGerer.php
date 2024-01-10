<h3>Ajouter une chanson :</h3>
<br>
<form method="post" action="#">
	<label for="titreP">Titre de la chanson : </label>
	<br><br>
	<input type="text" name="titreP" id="titreP" placeholder="Dommage" required />
	<br><br>
	<select name="nomPlaylist">
		<option value="Playlist" Selected>  </option>
		<option value="Playlist1">Playlist1</option>
		<option value="Playlist2">Playlist2</option>
		<option value="Playlist3">Playlist3</option>
	</select>
	<br><br>
	<input type="submit" name="boutonAjouter" value="ajouter"/>
</form>
<br>
<h3>Supprimer une chanson :</h3
<br>
<form method="post" action="#">
	<label for="titreP">Titre de la chanson : </label>
	<br><br>
	<input type="text" name="titreP" id="titreP" placeholder="Dommage" required />
	<br><br>
	<select name="nomPlaylist">
		<option value="Playlist" Selected>  </option>
		<option value="Playlist1">Playlist1</option>
		<option value="Playlist2">Playlist2</option>
		<option value="Playlist3">Playlist3</option>
	</select>
	<br><br>
	<input type="submit" name="boutonSupprimer" value="supprimer"/>
	<br>
	
</form>
<br><br>
 

<h2>Vos playlists:</h2>
<br>
<h3>Playlist :</h3>
<?php
foreach($instances_0 as $i) { ?>
    <li>
    titre : <?= implode($i)  ?>
    </li>
<?php } ?>
<br>

<h3>Playlist 1 :</h3>
<?php
foreach($instances_1 as $i) { ?>
    <li>
    titre : <?= implode($i)  ?>
    </li>
<?php } ?>
<br>

<h3>Playlist 2 :</h3>
<?php
foreach($instances_2 as $i) { ?>
    <li>
    titre : <?= implode($i)  ?>
    </li>
<?php } ?>
<br>

<h3>Playlist 3 :</h3>
<?php
foreach($instances_3 as $i) { ?>
    <li>
    titre : <?= implode($i)  ?>
    </li>
<?php } ?>
<br>
