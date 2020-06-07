//Calcule le margin top du main
$(document).ready(function() {
    var contentPlacement = $('#header').position().top + $('#header').height();
    $('#content').css('margin-top',contentPlacement);


//Calcule la hauteur pour les images du carrousel

    var fixHeight = function() {
        var headerHeight = $('#header').position().top + $('#header').height();
        
        if (window.innerWidth >= 992) {
            var coverHeight = window.innerHeight - headerHeight;
        } else {
            coverHeight = "65vh";
        }
        $('.cover').css('height',coverHeight);
    };
    fixHeight();
// Recalcule quand il y a un changement d'ecran
    $(window).resize(function() {
      fixHeight();
    });
});

