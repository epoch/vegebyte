console.log('its working');

var newTodoInput = document.getElementById('new-todo-input');
var newTodoBtn = document.getElementById('new-todo-button');
var todoList = document.getElementById('todos');

var addNewItem = function() {
  var someString = 'sdfsdf'
  var todoValue = newTodoInput.value;

  var newItem = document.createElement('li'); // <li></li>
  // console.log( newItem );
  var contentNode = document.createTextNode(todoValue); 
  newItem.appendChild(contentNode); 

  // newItem.addEventListener('click', function(event) {
  //   event.target.className = 'done';
  // });

  todoList.appendChild( newItem );
}

newTodoBtn.addEventListener('click', addNewItem);

todoList.addEventListener('click', function(event) {

  if (event.target.tagName === 'LI') {
    event.target.className = 'done';
  }
});








