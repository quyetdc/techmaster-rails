jQuery(function() {
    $(".comment-form")
        .on(
        "ajax:beforeSend", function (evt, xhr, settings) {
            return $(this).find('textarea').attr('disabled', 'disabled');
        }
    )
        .on(
        "ajax:success", function (evt, data, status, xhr) {
            $(this).find('textarea').removeAttr('disabled', 'disabled').val('');
            return $(".restaurant-comments-list").append(xhr.responseText);
        }
    );
});