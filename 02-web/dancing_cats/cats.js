var movePixels = 10;
var delayMs = 50;
var catTimer = null;
var goRight = true;
var img = document.getElementsByTagName('img')[0];


function catWalk() {
  var currentLeft = parseInt(img.style.left);

  // move right
  if (goRight) {
    img.style.left = (currentLeft + movePixels) + 'px';
  } else {
   // move left
    img.style.left = (currentLeft - movePixels) + 'px';
  }

  if (goRight === true && currentLeft > (window.innerWidth-img.width)) {
    goRight = false;
    img.style.transform = "scaleX(-1)";
  } else if (goRight === false && currentLeft < 0) {
    goRight = true;
    img.style.transform = "scaleX(1)";
  }
 
  // img.style.left = (currentLeft + movePixels) + 'px';

  // if (currentLeft > (window.innerWidth-img.width)) {
  //   img.style.left = '0px';
  // }
}

function startCatWalk() {
  if (catTimer !== null) {
    return;
  }

  catTimer = window.setInterval(catWalk, delayMs);
}


function stopCatWalk() {
  clearInterval(catTimer);
  catTimer = null;
}

function accelerate() {
  movePixels = movePixels + 2;
}