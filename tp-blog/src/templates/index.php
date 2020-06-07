    <!-- Page d'accueil -->



    <!-- Section carrousel -->
<div class="container-fluid row w-100 m-0 p-0" >
    <div id="carouselExampleControls" class="carousel slide col-lg-12 p-0" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" data-interval="3000">
                <img src="images/theme/banniere-pc.png" class="d-block w-100 cover" alt="pc">
            </div>
            <div class="carousel-item" data-interval="3000">
                <img src="images/theme/banniere-ps.jpg" class="d-block w-100 cover" alt="ps">
            </div>
            <div class="carousel-item" data-interval="3000">
            <img src="images/theme/video-game.png" class="d-block w-100 cover" alt="nintendo">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

</br>
    <!-- section featurette -->
<hr class="featurette-divider">
<div class="container  p-4 mt-5" >
    <div class="row featurette">
        <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">A propos<span class="text-muted"> de nous!</span></h2>
            <p class="lead font-weight-bold">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus id eveniet quidem maxime corporis enim quam aliquam, inventore ab commodi quos voluptate ipsa voluptatum expedita quas quibusdam fugit minus modi! Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit ut rerum aliquid modi exercitationem molestiae minima atque beatae, suscipit harum nobis pariatur iusto ipsum. Excepturi, magni dignissimos. Iste, animi. Aut?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Possimus dolor, cum ut reprehenderit neque inventore ipsa vel et a mollitia minima aliquid quisquam, dolorem illum eius laborum repellat assumenda iusto!</p><br/>
        </div>
        <div class="col-md-5 order-md-1">
            <img src="images/theme/blog.jpg" width="100%" height="100%" alt="blog">
        </div>
    </div>
</div>

    <!-- Liste des articles du blog -->
<div id="articles" class="container p-4 mt-5">
    <hr>
    <h2 class="text-center mt-5 pt-5">- Articles -</h2>
    <div class="row row-cols-1 row-cols-md-2">
        <?php foreach($posts as $post): ?>
            <div class="col-md-6">
                <div class="card">
                    <img class="card-img-top img-fluid" src="./images/articles/<?=$post["Image"]?>" alt="image de l\'article">
                    <div class="card-body">
                        <h5 class="card-title"><?= htmlspecialchars($post['Title']) ?></h5>
                        <!-- Seul un extrait de l'article du blog est affiché -->
                        <p class="card-text"><?= substr(htmlspecialchars($post['Contents']), 0, 100) ?>&nbsp;[...]</p>
                        <small>
                            Rédigé par <?= htmlspecialchars($post['FirstName']) ?> <?= htmlspecialchars($post['LastName']) ?>
                            le <?= htmlspecialchars($post['CreationTimestamp']) ?>
                        </small> <br />                
                        <!-- Lien vers article de blog détaillé avec les commentaires -->
                        <div class="text-center p-3">
                            <a href="show_post.php?id=<?= intval($post['Id']) ?>" class="btn btn-dark textCustom">Consulter l'article</a>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>   
    </div>
</div>