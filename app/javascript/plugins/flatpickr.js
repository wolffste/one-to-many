import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css" // A path to the theme CSS

flatpickr(".booking-input", {
  enableTime: false,
  mode: "range"
})


