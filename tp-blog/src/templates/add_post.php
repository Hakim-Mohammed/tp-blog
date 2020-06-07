<!-- Page d'ajout d'un article -->
<h2><i class="fa fa-pencil"></i> Rédiger un nouvel article</h2>

<!-- Formulaire de saisie d'un nouvel article -->
<form class="generic-form" action="add_post.php" method="post">
    <fieldset>
        <legend class="textCustom"><i class="fas fa-sticky-note textCustom"></i> Nouvel article</legend>
        <ul>
            <li>
                <label for="title">Titre :</label>
                <input type="text" id="title" name="title">
            </li>
            <li>
                <label class="textarea" for="contents">Article :</label>
                <textarea id="contents" name="contents" rows="15"></textarea>
            </li>
            <li>
                <div class="form-group">
                    <label for="photo">Image :</label>
                    <input type="file" class="form-control-file" id="photo" name="photo">
                </div>
            </li>
            <li>
                <label for="author">Auteur :</label>
                <select id="author" name="author">
                    <?php foreach($authors as $author): ?>
                        <option value="<?= intval($author['Id']) ?>"><?= htmlspecialchars($author['FirstName']) ?> <?= htmlspecialchars($author['LastName']) ?></option>
                    <?php endforeach ?>
                </select>
            </li>
            <li>
                <label for="category">Catégorie :</label>
                <select id="category" name="category">
                    <?php foreach($categories as $category): ?>
                        <option value="<?= intval($category['Id']) ?>"><?= htmlspecialchars($category['Name']) ?></option>
                    <?php endforeach ?>
                </select>
            </li>
            <li>
                <button class="btn btn-secondary bgCustom" type="submit">Enregistrer</button>
                <a class="btn btn-dark" href="index.php">Annuler</a>
            </li>
        </ul>
    </fieldset>
</form>