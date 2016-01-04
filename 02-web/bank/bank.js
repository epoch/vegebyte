var accounts = {

  savings: {
    balance: 0,
    deposit: function(amount) {
      accounts.savings.balance += amount;  
    },

    withdraw: function(amount) {
      if (amount <= accounts.savings.balance) {
        accounts.savings.balance -= amount;
        return true;
      } else {
        // trying hacking the bank
        return false;
      }
    }
  },

  checking: {
    balance: 0
  }

}

// ui
// var $ = function(selector) {
//   return document.querySelectorAll(selector);
// }

var depositBtn = document.querySelector('#deposit-btn');
var balance = document.querySelector('#balance');
var input = document.querySelector('#amount');

var updateBalance = function() {
  balance.innerHTML = '$' + accounts.savings.balance;
}

updateBalance();

depositBtn.addEventListener('click', function() {

  var amount = parseInt(input.value); // good enough

  accounts.savings.deposit(amount);  

  updateBalance();

  input.value = '';
});






