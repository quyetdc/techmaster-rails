var main = function(){    
    $('.article').click(function() {
        $('.description').hide();
        $('.article').removeClass('current');
        $(this).children('.description').show();    
        $(this).addClass('current');
    });
};

$(document).ready(main);

var keyPressed = function(event){
    if (event.which === 111) {
        $('.current').children('.description').toggle();
    } else if (event.which === 110) {
        // $('')
        var currentArticle = $('.current');
        var nextArticle = currentArticle.next();
        currentArticle.removeClass('current');
        nextArticle.addClass('current');
    }
};

$(document).keypress(keyPressed);
