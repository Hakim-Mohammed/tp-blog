<?php

    include 'application/bdd_connection.php';

    if(empty($_POST))
    {
        // Validation de la query string dans l'URL.
        if(!array_key_exists('id', $_GET) OR !ctype_digit($_GET['id']))
        {
            header('Location: index.php');
            exit();
        }

        // Récupération d'un article du blog.
        $query =
        '
            SELECT
                Id,
                Title,
                Contents,
                Image
            FROM
                Post
            WHERE
                Id = ?
        ';
        $resultSet = $pdo->prepare($query);
        $resultSet->execute([$_GET['id']]);
        $post = $resultSet->fetch();

        // Sélection et affichage du template PHTML.
        $template = 'edit_post';
        include 'layout.php';
    }
    else
    {
        // Edition d'un article du blog.
        $query =
        '
            UPDATE
                Post
            SET
                Title = ?,
                Contents = ?,
                Image = ?
            WHERE
                Id = ?
        ';
        $resultSet = $pdo->prepare($query);
        
        $resultSet->execute([$_POST['title'], $_POST['contents'], $_POST["photo"], $_POST['postId']]);

        // Retour au panneau d'administration.
        header('Location: admin.php');
        exit();
    }