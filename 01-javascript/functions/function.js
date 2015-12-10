console.log('functions');

// bakeCake();

// function bakeCake() {
//   console.log('buying ingredients');
//   console.log('pour milk into bowl');
//   console.log('mixing flour');
//   console.log('put in oven for 2 hours');
// }

var bakeCake = function() {
  console.log('buying ingredients');
  console.log('pour milk into bowl');
  console.log('mixing flour');
  console.log('put in oven for 2 hours');
};

var magicNumber = 5;

var sayHello = function(firstname, lastname) {
  console.log('hello ' + firstname + ' ' + lastname);
}

var greeting = function(name) {
  return 'hello ' + name;
}

// scope

var printMagicNumber = function() {
  var magicNumber = 7;
  console.log(magicNumber);
}

printMagicNumber();

console.log(magicNumber);

var cakePudding = function() {
  var tasty = true; // global
}



