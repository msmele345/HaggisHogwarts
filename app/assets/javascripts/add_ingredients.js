$( document ).ready(function() {

  $(".new-recipe-form").on("click", ".add-ingredient-link", function(event) {
    event.preventDefault();
    var $link = $(this);

    var counter = parseInt($link.attr("data-count")) + 1;
    $link.attr("data-count", counter);

    var url = $link.attr("href");

    var ajaxRequest = $.ajax({
      data: {count: counter},
      url: url
    });

    ajaxRequest.done( function(response) {
      console.log(response);
      $(".new-recipe-form").find('.ingredients-add-container').append(response);
    });


  });


});
