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
        // confetti({
        //   particleCount: 100,
        //   spread: 70,
        //   origin: { y: 0.6 },
        // });
        const count = 600,
          defaults = {
            origin: { y: 0.7 },
          };

        function fire(particleRatio, opts) {
          confetti(
            Object.assign({}, defaults, opts, {
              particleCount: Math.floor(count * particleRatio),
            })
          );
        }

        fire(0.25, {
          spread: 26,
          startVelocity: 55,
        });

        fire(0.2, {
          spread: 60,
        });

        fire(0.35, {
          spread: 100,
          decay: 0.91,
          scalar: 0.8,
        });

        fire(0.1, {
          spread: 120,
          startVelocity: 25,
          decay: 0.92,
          scalar: 1.2,
        });

        fire(0.1, {
          spread: 120,
          startVelocity: 45,
        });
      })
  }
}
