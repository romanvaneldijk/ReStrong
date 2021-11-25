import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['button', 'order'];

  connect() {
    console.log(this.element);
    console.log(this.buttonTarget);
    console.log(this.orderTarget);
  }

  click(event) {
    event.preventDefault();

    console.log("it works")
    this.orderTarget.classList.remove("d-none")
    this.orderTarget.classList.add("d-flex")
    this.orderTarget.classList.add("justify-content-center")
    // this.orderTarget.innerHTML = '<%= link_to "My Order", order_path(@order), class: "button" %>'

  }
}
