
window.onload = function() {

  var button = document.getElementsByTagName('button')[0];

  

  // addEventListener(event, callback)

  button.addEventListener('click', function(event) {

    event.preventDefault();

    console.log(event);
    console.log('pushing it');
  });

}

