import Swal from 'sweetalert2'
import Rails from '@rails/ujs'
// document.addEventListener('turbolinks:load', function() {
//   swal.fire('hello world')
// })

Rails.confirm = function(message, element) {
  console.log("alert starting")
  // swal.fire({
  //   html: message, 
  //   showCancelButton: true,
  //   confirmButtonText: "Ok", 
  //   cancelButtonText: "Cancel"
  // })
  // .then((result) => {
  //   if (result.value) {
  //     console.log("finished")
  //     element.removeAttribute('data-confirm')
  //     element.click()
  //   }
  // })
  // console.log("alert ending")

  Swal.fire({
  title: 'Are you sure?',
  text: "You won't be able to revert this!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Yes, delete it!'
}).then((result) => {
  if (result.value) {
    console.log(element)
    element.removeAttribute('data-confirm')
    element.click()
    Swal.fire(
      'Deleted!',
      'Your file has been deleted.',
      'success'
    )
  }
})
}