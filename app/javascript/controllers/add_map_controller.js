import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="add-map"
export default class extends Controller {
  static targets = ["button", "list", "map", "buttonmap", "buttonlist"];

  connect() {
    console.log("hello add map controller");
  }

  change(event) {
    this.buttonmapTarget.classList.toggle("d-none");
    this.buttonlistTarget.classList.toggle("d-none");
    this.listTarget.classList.toggle("d-none");
    this.mapTarget.classList.toggle("d-none");
    console.log(this.listTarget);
  }
}
