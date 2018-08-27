// import "bootstrap";
// import { volunteersNeeded } from "../components/volunteers_needed.js"

// volunteersNeeded();
import GMaps from 'gmaps';

const button = document.querySelector('.button');
const submit = document.querySelector('.submit');

function toggleClass() {
  this.classList.toggle('active');
}

function addClass() {
  this.classList.add('finished');
}

button.addEventListener('click', toggleClass);
button.addEventListener('transitionend', toggleClass);
button.addEventListener('transitionend', addClass);


(function($) {
    "use strict";

    var $navbar = $("#filter-container"),
        y_pos = $navbar.offset().top,
        height = $navbar.height();

    $(document).scroll(function() {
        var scrollTop = $(this).scrollTop();

        if (scrollTop > y_pos + height) {
            $navbar.addClass("filter-fixed").animate({
                top: 0
            });
        } else if (scrollTop <= y_pos) {
            $navbar.removeClass("filter-fixed").clearQueue().animate({
                top: "-48px"
            }, 0);
        }
    });

})(jQuery, undefined);
