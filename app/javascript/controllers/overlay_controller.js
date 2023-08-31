import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-overlay"
export default class extends Controller {
  static targets = ["overlay"]

  connect() {
  }

  display() {
    this.overlayTarget.classList.add('displayed');
  }

  close() {
    this.overlayTarget.classList.remove('displayed');
  }
}
