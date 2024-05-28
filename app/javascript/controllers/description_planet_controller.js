import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="description-planet"
export default class extends Controller {

  static values = {
    description: String,
    shortText: String
  }
  connect() {
    this.shortTextValue = this.descriptionValue.slice(0, 30) + "..."
    // console.log(this.descriptionValue);
  }

  fire(event) {

    if (event.currentTarget.innerText == this.shortTextValue) {
      event.currentTarget.innerText = this.descriptionValue
    } else {
      event.currentTarget.innerText = this.shortTextValue
    }
  }
}
