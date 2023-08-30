import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["query"];

  connect() {
    console.log("Connected !");
  }

  handleSubmit(event) {
    event.preventDefault();
    const query = this.queryTarget.value;
    console.log(`query: ${query}`);
  }

  }
