<!-- Page d'édition d'un article -->
<h2 class="text-center"><i class="fa fa-pencil-alt"></i>- Editer un article -</h2>

<!-- Formulaire de mise à jour d'un article -->
<form class="generic-form" action="edit_post.php" method="post">

    <!-- Utilisation d'un champ caché pour spécifier à quel article rattacher le commentaire -->
    <input type="hidden" name="postId" value="<?= intval($post['Id']) ?>">

    <fieldset>
        <legend class="textCustom"><i class="fas fa-sticky-note textCustom"></i> Article</legend>
        <ul>
            <li>
                <label for="title">Titre :</label>
                <input type="text" id="title" name="title" value="<?= htmlspecialchars($post['Title']) ?>">
            </li>
            <li>
                <label class="textarea" for="contents">Article :</label>
                <textarea id="contents" name="contents" rows="15"><?= htmlspecialchars($post['Contents']) ?></textarea>
            </li>
            <li>
                <div class="form-group">
                    <label for="photo">Image :</label>
                    <input type="file" class="form-control-file" id="photo" name="photo" value="<?= htmlspecialchars($post['Contents']) ?>">
                </div>
            </li>
            <li>
                <button class="btn btn-secondary bgCustom" type="submit">Mettre à jour</button>
                <a class="btn btn-dark" href="index.php">Annuler</a>
            </li>
        </ul>
    </fieldset>
</form>