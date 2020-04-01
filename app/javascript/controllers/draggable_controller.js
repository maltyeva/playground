import { Controller } from 'stimulus'
import { Sortable } from '@shopify/draggable'

export default class extends Controller {
  static targets = [ "column", "item" ]
  initialize() {}
  connnect() {
    console.log('connected')
    if (this.hasItemTarget) {
      const sortable = new Sortable(this.columnTargets, {
        draggable: 'li'
      })
    }
  }
  disconnect() {}
  
}
