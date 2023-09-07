import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dice"
export default class extends Controller {
  static targets = ["overlay"]

  connect() {
    console.log("Connected to dices !");
  }

  rollDice() {
    console.log("coucou");
    const elDiceOne = document.getElementById('dice1');
    const elDiceTwo = document.getElementById('dice2');

    let diceOne   = Math.floor((Math.random() * 6) + 1);
    let diceTwo   = Math.floor((Math.random() * 6) + 1);

    console.log(diceOne + ' ' + diceTwo);

    for (let i = 1; i <= 6; i++) {
      elDiceOne.classList.remove('show-' + i);
      if (diceOne === i) {
        elDiceOne.classList.add('show-' + i);
      }
    }

    for (var k = 1; k <= 6; k++) {
      elDiceTwo.classList.remove('show-' + k);
      if (diceTwo === k) {
        elDiceTwo.classList.add('show-' + k);
      }
    }
    setTimeout(rollDice(), 1000);
  }
  display() {
    this.overlayTarget.classList.add('displayed');
  }

  close() {
    this.overlayTarget.classList.remove('displayed');
  }
}
