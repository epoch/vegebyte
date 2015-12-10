console.log('objects exercise');

// ex1: recipe

var recipe = {
  title: 'surprise',
  servings: 3,
  ingredients: ['cake','celery','vegemite','fairy floss']
}

console.log( recipe.title );
console.log( recipe.servings );
for (var i = 0; i < recipe.ingredients.length; i++) {
  console.log( recipe.ingredients[i] );
}

// ex2: reading list

var book1 = {
  title: 'alice in wonderland',
  author: 'dunno',
  alreadyRead: true
}

var book2 = {
  title: 'jurassic park',
  author: 'Michael Crighton',
  alreadyRead: false
}

var books = [book1, book2];

// var books = [{ 
//   title: 'jurassic park'
// },{
//   title: 'alice in wonderland'
// }];

for (var i = 0; i < books.length; i++) {
  var currentBook = books[i];

  if (currentBook.alreadyRead) {
    console.log('already read ' + currentBook.title);
  } else {
    console.log('you may want to check out ' + currentBook.title);
  }
}

// ex3: movies

var film1 = {
  title: 'sharknado',
  duration: 100,
  stars: ['some guy form 90210', 'sharks']
}

function filmInfo() {
  console.log(film1.title);
  console.log(film1.stars.join(', '));
}

// console.log(film1.title);
// console.log( film1.stars.join(', ') );

