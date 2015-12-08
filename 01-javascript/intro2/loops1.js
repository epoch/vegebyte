console.log('loopy');

var counter = 1;

while (counter <= 10) {
  console.log('counter is ' + counter);
  counter = counter + 1;
}

var secretNumber = 42;

// user input will always be string
// var guess = prompt('enter a number between 1 and 5'); 

// while (secretNumber !== parseInt(guess)) {
//   console.log('you fail life, try harder');
//   guess = prompt('enter a number between 1 and 5');
// }

// do {
//   var guess = parseInt(prompt('enter a number'));
// } while (secretNumber !== guess)

// initial value, exit condition, increment
for (var count = 0; count < 10; count = count + 1) {
  console.log(count);
}



