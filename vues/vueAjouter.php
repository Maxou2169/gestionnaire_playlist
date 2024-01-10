<h2>Ajout d'une chanson</h2>

<form method="post" action="#">
	<label for="titreC">Titre de la chanson : </label>
	<input type="text" name="titreC" id="titreC" placeholder="Dommage" required />
	<br/><br/>
	<label for="date">Date de la chanson : </label>
	<input type="text" name="date" id="date" placeholder="1960-01-01" required />
	<br/><br/>
	<label for="durée">Durée de la chanson : </label>
	<input type="text" name="durée" id="durée" placeholder="120" required />
	<br/><br/>
	<label for="fichier">Nom du fichier : </label>
	<input type="text" name="nomfichier" id="nomfichier" placeholder="fichier" required />
	<br/><br/>
	<label for="groupe">Groupe : </label>
	<select name="groupe">
		<?php foreach($nomG as $g) { ?>
			<option value="<?= implode($g)?>"Selected> <?= implode($g)?></option> 
			<?php } ?>
	</select>
	<br/><br/>
	<label for="genre">Genre : </label>
	<select name="genre">
		<?php foreach($nom_genre as $g) { ?>
			<option value="<?= implode($g)?>"Selected> <?= implode($g) ?></option>
			<?php } ?>
	</select>
	<br/><br/>
	<input type="submit" name="boutonValider" value="ajouter"/>
</form>

<?php if(isset($message)) { ?>
	<p style="background-color: yellow;"><?= $message ?></p>
<?php } ?>

