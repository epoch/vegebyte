console.log('ready for some whiskey');

var magicNumber = 42;

var sayHello = function() {
  var message = 'hello there';

  debugger
  console.log(message);

  var secret = 'password';
  debugger
}
                      // search for the message-div
var newMessage = document.getElementById('message-div');
var magicButton = document.getElementById('magic-button');

var printMessage = function() {
  debugger
  newMessage.innerHTML = magicNumber;
}

// when someone click on magic button print message
magicButton.addEventListener('click', printMessage);

sayHello();