_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
};


$('main').on('click', '.like', function() {

  var dishId = $(this).closest('.ui-card').attr('data-id');

  // todo: fix hard coded dish id
  var options = {
    url: 'http://localhost:3000/api/dishes/' + dishId + '/likes',
    method: 'post',
    dataType: 'json'
  }

  var $counter = $(this).closest('.ui-card').find('.counter');

  $.ajax(options).done(function(data) {
    $counter.html(data.count);    
  })

  // var orig = parseInt($counter.html(), 10);
  // $counter.html(orig + 1);

});

var options = {
  url: 'http://localhost:3000/api/dishes',
  method: 'get',
  dataType: 'json'
}

var displayDishes = function(dishes) {
  _.each(dishes, function(dish) {

    // var $newCard = $('<div>').addClass('ui-card').attr('data-id', dish.id);

    // var $header = $('<div>').addClass('content').html('<div class="right">12h</div><img class="avatar" src="https://placeholdit.imgix.net/~text?txtsize=19&txt=200%C3%97200&w=200&h=200" alt="">DT');

    // var $image = $('<div>').addClass('image')
    // .html('<img src="'+ dish.image_url +'" alt=""><span class="like">&hearts;</span>');

    // var $info = $('<div>').addClass('content').html('<h2>'+ dish.name +'</h2>');

    // // todo: fix hard coded counter
    // var $footer = $('<div>').addClass('content').html('<span class="right counter">'+ dish.counter +'</span><span>bookmark</span>');

    // $newCard.append($header);
    // $newCard.append($image);
    // $newCard.append($info);
    // $newCard.append($footer);

    var dishTemplate = $('#dish-template').html();
    var templateFunction = _.template(dishTemplate);
    var html = templateFunction(dish);

    $('main').append(html);
  })
}

// displayDishes(dishes);

$.ajax(options).done(displayDishes);