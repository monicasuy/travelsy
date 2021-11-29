import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["container"]

  nextStep(event) {
    const nextStep = event.target.dataset.nextStep;
    const previousStep = event.target.dataset.previousStep;
    const actualStep = nextStep - 1;

    // remove "is--step-0" from container
    this.containerTarget.classList.remove(`is--step-${actualStep}`)
    // add "is--step-1" from container
    this.containerTarget.classList.add(`is--step-${nextStep}`)
  }
}
