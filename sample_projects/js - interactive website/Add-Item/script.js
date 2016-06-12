$(document).ready(function(){
    //Get the value from an input
    $('#button').click(function() {
       var toAdd = $('input[name=checkListItem]').val();
       $('.list').append('<div class="item">' + toAdd + '</div>');
    });
});

$(document).on('click', '.item', function(){
    $(this).remove();    
});
