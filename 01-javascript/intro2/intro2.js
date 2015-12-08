console.log('its working');

if (5 > 4) {
  console.log('math is so easy');
}

var vegebyteRule = true;

if (vegebyteRule) {
  console.log('yay vegebyte');
}

var myName = '';
if (myName) {
  console.log('hello ' + myName);
}
// empty string "" are falsey

var points = 0;
if (points) {
  console.log('you have ' + points + ' points');
}
// the number 0 is falsey

var firstName = null;
if (firstName) {
  console.log('your firstname is ' + firstName);
}
// undefined is also falsey


var year = '2015';

year = parseInt(year);

if ( year === 2015) {
  console.log('im in the present');
} else if (year < 2015) {
  console.log('blast from the past');
} else {
  console.log('greetings from the future');
}



