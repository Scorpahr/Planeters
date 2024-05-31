import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element, { inline: true,
      dateFormat: "Y-m-d",
      minDate: "today",
      mode: "range",
      disable: [
        function(date) {
          // can only take a booking the week-end
          return !(date.getDay() === 0 || date.getDay() === 6);
        }
      ],
      locale: {
        "firstDayOfWeek": 1
      }
      })
  }

}
