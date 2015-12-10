console.log('dom magic');

var winButton = document.getElementById('win-button');

var task = function() {
  console.log('doing task');

  var success = document.getElementById('success');

  success.innerHTML = 'win!';
}

winButton.addEventListener('click', task);