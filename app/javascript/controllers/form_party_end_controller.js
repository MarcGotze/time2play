import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-party-end"
export default class extends Controller {
  static targets = ['playerForm', 'hidden']
  connect() {
    console.log(this.hiddenTarget);
  }

  endParty(event) {
    event.preventDefault()

    this.players = []
    this.playerFormTargets.forEach(player => {
      // this.players.push({player_id: player.dataset.playerId, score: player[2].value})
      this.players.push([player.dataset.playerId, player[2].value])

    });
    console.log(this.players);
    this.hiddenTarget.value = this.players
    console.log(this.hiddenTarget);

    const formData = new FormData(event.currentTarget)
    fetch(event.currentTarget.action, {
      method: "PATCH",
      body: formData
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })
  }
}
