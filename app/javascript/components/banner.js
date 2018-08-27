import Typed from 'home.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["La seule peine que vous encourez", "C'est de donner de votre temps"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
