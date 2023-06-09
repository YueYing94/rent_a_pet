import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  // Inform the controller that it has two targets in the form, which are our inputs
  static targets = [ "startDate", "endDate" ]

  connect() {
    flatpickr(this.startDateTarget, {})
    flatpickr(this.endDateTarget, {})
    this.initFlatpickr();
  }

  initFlatpickr = () => {
    const newBookingForm = document.getElementById('new_booking');
    if (newBookingForm) {
      flatpickr(".datepicker", {
        minDate: 'today',
        altInput: true,
        dateFormat: "Y-m-d",
        disable: JSON.parse(newBookingForm.dataset.unavailableDates)
      });
    }
  };
}
