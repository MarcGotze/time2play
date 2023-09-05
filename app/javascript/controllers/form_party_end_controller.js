import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-party-end"
export default class extends Controller {
  static targets = ['playerForm', 'playerFormContainer', 'playersScores', 'hidden']
  connect() {
    console.log(this.playerFormContainerTarget);
  }

  displayFormParty() {
    event.preventDefault();
    console.log(this.playerFormContainerTarget);
    this.playerFormContainerTarget.classList.remove('d-none')
    this.playersScoresTarget.classList.add('d-none')
  }

  updateParty(event) {
    event.preventDefault()

    this.players = []
    this.playerFormTargets.forEach(player => {
      // this.players.push({player_id: player.dataset.playerId, score: player[2].value})
      this.players.push([player.dataset.playerId, player[2].value])

    });

    this.hiddenTarget.value = this.players
    const formData = new FormData(event.currentTarget)
    fetch(`${event.currentTarget.action}?scores=true`, {
      method: "PATCH",
      headers: {
        "Accept": "plain/text"
      },
      body: formData
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data);
        this.playerScoresTarget.innerHTML = data;
      })
  }

  endParty(event) {
    event.preventDefault()

    this.players = []
    this.playerFormTargets.forEach(player => {
      // this.players.push({player_id: player.dataset.playerId, score: player[2].value})
      this.players.push([player.dataset.playerId, player[2].value])

    });
    this.hiddenTarget.value = this.players
    const formData = new FormData(event.currentTarget)
    fetch(event.currentTarget.action, {
      method: "PATCH",
      body: formData
    })
      .then(response => response.text())
      .then((data) => {
        document.querySelector('body').innerHTML = data;
      })
  }
}
