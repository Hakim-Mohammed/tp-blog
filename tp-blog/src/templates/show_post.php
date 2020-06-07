<!-- Page d'article de blog détaillé avec les commentaires -->
<h2 class="text-center"><i class="fa fa-file-text-o"></i>- Article -</h2>

<!-- Article du blog -->
<section class="container">
    <div class="row">
        <div class="col-lg-8">
            <h3><?= htmlspecialchars($post['Title']) ?></h3>
            <article><?= nl2br(htmlspecialchars($post['Contents'])) ?></article>
            <small>
            Rédigé par <?= htmlspecialchars($post['FirstName']) ?> <?= htmlspecialchars($post['LastName']) ?>
            le <?= htmlspecialchars($post['CreationTimestamp']) ?>
            </small>
        </div>
        <div class="col-lg-4">
            <img class="img-fluid rounded float-left" src="./images/articles/<?=$post["Image"]?>" alt="image de l\'article">
        </div>
    </div>
</section>

<hr>

<!-- Liste des commentaires de l'article du blog -->
<ul class="comment-list">
    <?php foreach($comments as $comment): ?>
        <li class="comment">
            <h4><i class="fa fa-comment"></i> Rédigé par <?= htmlspecialchars($comment['NickName']) ?></h4>
            <article><?= htmlspecialchars($comment['Contents']) ?></article>
        </li>
    <?php endforeach; ?>
</ul>

<hr>

<!-- Formulaire de saisie d'un nouveau commentaire pour cet article -->
<form class="generic-form" action="add_comment.php" method="POST">

    <!-- Utilisation d'un champ caché pour spécifier à quel article rattacher le commentaire -->
    <input type="hidden" name="postId" value="<?= intval($_GET['id']) ?>">

    <fieldset>
        <legend class="textCustom"><i class="fas fa-comment textCustom"></i> Nouveau commentaire</legend>
        <ul>
            <li>
                <label for="nickName">Pseudo :</label>
                <input type="text" id="nickName" name="nickName">
            </li>
            <li>
                <label class="textarea" for="contents">Commentaire :</label>
                <textarea id="contents" name="contents" rows="5"></textarea>
            </li>
            <li>
                <button class="btn btn-secondary bgCustom" type="submit">Ajouter</button>
                <a class="btn btn-dark" href="index.php">Annuler</a>
            </li>
        </ul>
    </fieldset>
</form>