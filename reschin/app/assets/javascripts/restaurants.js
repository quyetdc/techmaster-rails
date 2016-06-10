
$(document).ready(function(){
    $("#btn-like").click(function(){
        $.ajax({
            url: "//" + location.host + "/favorites",
            method: "POST",
            data: {
               favorite: {
                   restaurant_id: $(this).attr('restaurant-id')
               }
            },
            dataType: "json",
            success: function(data) {
                // return alert('success');
                if ($("#btn-like").hasClass('btn-danger')) {
                    $("#btn-like").text('Thích');
                } else {
                    $("#btn-like").text('Bo Thich');
                }

                $("#btn-like").toggleClass('btn-danger');
                $("#btn-like").toggleClass('btn-primary');
            },
            error: function(jqXHR, textStatus) {
                return alert("Request failed: " + textStatus);
            }
        });
    });
});