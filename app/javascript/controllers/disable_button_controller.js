import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['button'];

  click(event) {
    // event.preventDefault();
    // console.log(this.element);
    // console.log("hello");
    this.buttonTarget.classList.add("d-none");
  }
}
