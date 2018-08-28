import "bootstrap";
// import { volunteersNeeded } from "../components/volunteers_needed.js"
import { autocomplete } from '../components/autocomplete';

// volunteersNeeded();
import GMaps from 'gmaps';
import "../plugins/flatpickr";
import '../components/select2';
import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

const button = document.querySelector('.button');
const submit = document.querySelector('.submit');

function toggleClass() {
  this.classList.toggle('active');
}

function addClass() {
  this.classList.add('finished');
}

// button.addEventListener('click', toggleClass);
// button.addEventListener('transitionend', toggleClass);
// button.addEventListener('transitionend', addClass);

// autocomplete();



