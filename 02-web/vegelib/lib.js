// EACH myEach(arr, callback) 

// var numbers = [1,3,5];

// var printNumber = function(elem) {
//   console.log(elem) 
// }

// usage eg 1:

// myEach(numbers, printNumber);
// 1
// 3
// 5

// usage ex 2:

// myEach([4,6,8], function(elem) {
//   console.log(elem);
// });

// 4
// 6
// 8

// SAMPLE mySample(arr, [n])
// usage eg 1:
// mySample(['a','b','c']);
// 'b'

// usage eg 2:
// mySample(['a','b','c','d'], 2);
// ['b','a']



// Vegebyte.myEach();
// Vegebyte.mySample();

var action = function(elem) {
  console.log('hello ' + elem);
}

// higher order function

// namespacing
var Vegebyte = {
  myEach: function(arr, action) {
    for(i = 0; i < arr.length; i++) {
      action( arr[i] );
    }
  },

  mySample: function(arr, num) {
    if (num === undefined) {
      var index = Math.floor(Math.random() * arr.length)
      return arr[index];
    } else {
      var result = [];
      for (var i = 0; i < num; i++) {
        result.push( arr[Math.floor(Math.random() * arr.length)] );
      }

      return result;
    }s
  }
};