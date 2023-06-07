import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="add-map"
export default class extends Controller {
  static targets = ["button", "list", "map"];
  
  connect() {
    document.addEventListener("DOMContentLoaded", () => {
      console.log("hello add map controller");
    });
  }
  change() {
    if (
      this.buttonTarget.innerHTML ===
      `Show Map <i class="fa-solid fa-map-location-dot"></i>`
    ) {
      this.buttonTarget.innerHTML = `Show List <i class="fa-solid fa-list-ul"></i>`;
      this.listTarget.classList.add("d-none");
      this.mapTarget.classList.remove("d-none");
    } else {
      this.buttonTarget.innerHTML = `Show Map <i class="fa-solid fa-map-location-dot"></i>`;
      this.listTarget.classList.remove("d-none");
      this.mapTarget.classList.add("d-none");
    }
  }
}
