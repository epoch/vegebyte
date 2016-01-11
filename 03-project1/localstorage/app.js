// todor
var app = {
  tasks: [],

  elems: {
    $tasks: $('#tasks'),
    $add: $('#addTaskBtn'),
    $input: $('#newItemInput')
  },

  init: function() {

    app.elems.$tasks.on('click', 'li', function(event) {
      // this
      console.log('this', this);
      // event.target
      console.log('event target', event.target);
    });

    app.elems.$add.on('click', function() {
      var content = app.elems.$input.val();
      app.addItem(content);

      // updating the dom
      var $listItem = $('<li>').html(content);
      app.elems.$tasks.append( $listItem );
    });

    // read localstorage and reload tasks 
    app.tasks = JSON.parse(localStorage.getItem('tasks')) || [];
    app.renderTasks();
  },

  addItem: function(content) {
    app.tasks.push(content);
    localStorage.setItem('tasks', JSON.stringify(app.tasks));
  },

  renderTasks: function() {
    // go through tasks array to append li's to unordered list

    _.each(app.tasks, function(task) {
      // create new li's
      var $listItem = $('<li>').html( task );
      // append it back to tasks ul
      app.elems.$tasks.append($listItem);

    });

    // for (var index=0; index<app.tasks.length; index++) {
    //   // create new li's
    //   var listItem = $('<li>').html( app.tasks[index] );
    //   // append it back to tasks ul
    //   app.elems.tasks.append(listItem);
    // }
  }
}

app.init();



