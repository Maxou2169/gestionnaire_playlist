<h2>Créer une playlist :</h2>

<form method="post" action="#">
	<label for="genre">Genre : </label>
	<select name="genre">
		<option value="defaut" Selected>  </option>
		<?php foreach($nom_genre as $g) { ?>
			<option value="<?= implode($g)?>"> <?= implode($g) ?></option>
			<?php } ?>
	</select>
	<br/><br/>
	<label for="nomPlaylist">Nom de la playlist : </label>
	<select name="nomPlaylist">
		<option value="Playlist" Selected>  </option>
		<option value="Playlist1">Playlist1</option>
		<option value="Playlist2">Playlist2</option>
		<option value="Playlist3">Playlist3</option>
	</select>
		<br><br>
	<input type="submit" name="boutonValider" value="créer une playlist"/>
</form>

<?php if(isset($message)) { ?>
	<p><?= $message ?></p>
<?php } ?>

<?php if(isset($msg)) { ?>
	<p><?= $msg ?></p>
<?php } ?>
