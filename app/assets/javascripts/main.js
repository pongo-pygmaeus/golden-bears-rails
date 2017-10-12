$(document).on('turbolinks:load', function(){
  console.log("Page is Ready")

  $(".jquery-link").on("click", function(event){
    event.preventDefault();
    var link = $(this)

    $.ajax({
      url: link.attr('href'),
      method: 'GET',
      dataType: 'json'
    })
    .done(function(response){
      console.log(response)
      response.forEach(function(fish){
        link.parent().siblings('.ajax-area').append("<br>")
        link.parent().siblings('.ajax-area').append(fish.name)
      })
    })
  })
})
