# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  bookLikeBtn = $(".book-like-btn")
  bookLikeBtn.click(->
    $(this).parent().submit()
  )

  if $("#book-show-add-to-wishlist").length > 0
    $("#book-show-add-to-wishlist").click( ->
      $.ajax({
        url: "//" + location.host + "/books/like"
        method: "POST",
        data: {
          book_id : $(this).attr('book-id')
        },
        dataType: "json",
        success: (data) ->
          console.log('success');
          $("#book-show-add-to-wishlist").toggleClass('like-btn-active');
        ,
        error: (jqXHR, textStatus) ->
          alert( "Request failed: " + textStatus )
      })
    )

$(document).ready(ready)
$(document).on('page:load', ready)