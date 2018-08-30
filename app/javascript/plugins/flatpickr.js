import flatpickr from "flatpickr"
import { French } from "flatpickr/dist/l10n/fr.js"
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
  locale: French,
})

console.log("test Lisiane");
