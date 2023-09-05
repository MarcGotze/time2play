import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-party-end"
export default class extends Controller {
  static targets = ['playerForm', 'playerFormContainer', 'playersScores', 'hidden']
  connect() {
  }

  displayFormParty() {
    event.preventDefault();
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
        "Accept": "text/plain"
      },
      body: formData
    })
      .then(response => response.text())
      .then((data) => {
        this.playersScoresTarget.innerHTML = data;
        this.playersScoresTarget.classList.remove("d-none");
        this.playerFormContainerTarget.classList.add("d-none")
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
