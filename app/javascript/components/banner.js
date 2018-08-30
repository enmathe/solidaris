import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["La seule peine que vous encourez,", "c'est de donner de votre temps..."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };


