console.log('functions2');

var cheese = 'brie cheese';


// signature

var microwaveIt = function(food) {
  var crazyWaves = "~";

  food = food.split('').join(crazyWaves);

  return food;
}

// parameters
var add = function(number1, number2) {
  return number1 + number2;
}

// arguments
add(2, 5);

var plusOne = function(number) {
  return number + 1;
}

var doSomething = function(task) {
  console.log("the function or 'task' you give me is: ", task);
}

// doSomething(add);

var simpsons = ['bart','lisa','homer','maggie','marge','ned'];

var scores = [1, 10, 2, 21];

var sayHello = function() {
  console.log('hello there');
}

// setTimeout(fn, 5000)

var list = ['banana','apple','plum'];

// [6,5,4]

var lengths = function(arrayOfWords) {
  var arrayOfWords = ['banana','apple','plum'];
  var bag = []; // empty bag

  for (var index = 0; index < arrayOfWords.length; index++) { //2
    var wordLength = arrayOfWords[2].length; // 6 5 4

    bag.push( wordLength ); // bag = [6,5,4] 
  }

  return bag;
}

console.log( lengths(list) );

var transmogrifier = function(num1, num2, num3) {

}