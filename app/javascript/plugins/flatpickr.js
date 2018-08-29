import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
  enableTime: true,
  dateFormat: "d.m.Y",
  minDate: "today",
})

flatpickr(".userdatepicker", {
  mode: "range",
  enableTime: true,
  dateFormat: "d.m.Y",
  minDate: "today",
})
