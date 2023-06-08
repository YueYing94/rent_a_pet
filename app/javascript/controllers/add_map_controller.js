import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="add-map"
export default class extends Controller {
  static targets = ["button", "list", "map", "buttonmap", "buttonlist"];

  connect() {
    console.log("hello add map controller");
  }

  change(event) {
    // this.buttonTarget.innerHTML = `Show Map <i class="fa-solid fa-map-location-dot"></i>`;
    // if (this.event.currentTarget.value === "list") {
    //   this.buttonTarget.innerHTML = `Show List <i class="fa-solid fa-list-ul"></i>`;
    // } else {
    //   this.event.currentTarget.value = "map"
    // }
    this.buttonmapTarget.classList.toggle("d-none");
    this.buttonlistTarget.classList.toggle("d-none");
    this.listTarget.classList.toggle("d-none");
    this.mapTarget.classList.toggle("d-none");
    console.log(this.listTarget);
    // if (
    //   this.buttonTarget.innerHTML === `Show Map <i class="fa-solid fa-map-location-dot"></i>`
    // ) {
    //   this.buttonTarget.innerHTML = `Show List <i class="fa-solid fa-list-ul"></i>`;
    //   this.listTarget.classList.add("d-none");
    //   this.mapTarget.classList.remove("d-none");
    // } else {
    //   this.buttonTarget.innerHTML = `Show Map <i class="fa-solid fa-map-location-dot"></i>`;
    //   this.listTarget.classList.remove("d-none");
    //   this.mapTarget.classList.add("d-none");
    // }
  }
}
