import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabbar-active"
export default class extends Controller {
  static targets = ["tab1", "tab2", "tab3", "tab4"]

  connect() {
    this.tab1Target.classList.add("inactive");
    this.tab2Target.classList.add("inactive");
    if (this.hasTab3Target) {this.tab3Target.classList.add("inactive")};
    if (this.hasTab4Target) {this.tab4Target.classList.add("inactive")};
    switch (window.location.pathname.replace(/^\/([^\/]*).*$/, '$1')) {
      case "boardgames":
        this.tab1Target.classList.remove("inactive");
        this.tab1Target.classList.add("active");
        break
      case "users":
        if (this.hasTab3Target) {
          this.tab3Target.classList.remove("inactive");
          this.tab3Target.classList.add("active");
        }
        if (this.hasTab3Target) {
          this.tab4Target.classList.remove("inactive");
          this.tab4Target.classList.add("active");
        }
        break
      case "challenges":
        this.tab2Target.classList.remove("inactive");
        this.tab2Target.classList.add("active");
        break
      default:
        this.tab1Target.classList.remove("inactive");
        this.tab1Target.classList.add("active");
        break
    }
  }

}
