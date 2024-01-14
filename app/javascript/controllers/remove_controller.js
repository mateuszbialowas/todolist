import {Controller} from "@hotwired/stimulus"

// Connects to data-controller="remove"
export default class extends Controller {
    static values = {
        elementTarget: String
    }

    connect() {
        // add click event listener. When clicked, call remove()
        this.element.addEventListener("click", this.remove.bind(this))
    }

    remove() {
        const element = document.querySelector(this.elementTargetValue)
        element.remove()
    }
}
