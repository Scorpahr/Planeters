import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element, { inline: true, enableTime: true,
      dateFormat: "Y-m-d H:i", minDate: "today", mode: "range"})
  }
}
