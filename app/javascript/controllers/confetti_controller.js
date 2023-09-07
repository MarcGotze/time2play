import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("cc");
    const confettiSettings = {
      target: 'confetti-container',
      particleCount: 100,
      spread: 70,
      origin: { y: 0.6 },
    };

    const confetti = new ConfettiGenerator(confettiSettings);
    confetti.render();
  }
}
