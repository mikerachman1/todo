import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "task", "container" ]

  connect() {
    if (this.taskTargets === undefined || this.taskTargets.length == 0) {
      this.containerTarget.innerHTML = "This list is empty!";
      this.containerTarget.style.color = "red";
      this.containerTarget.style.fontSize = "30px";
    }
  }
}
