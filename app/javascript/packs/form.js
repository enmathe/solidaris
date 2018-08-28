// $(document).ready(function(){
//   $(".js-category-choice").click(function(){
//     $('.js-category-choice').each(function(card) {
//       card.find('.overlay-2').removeClass('card-active');
//     });

//     $(this).find('.overlay-2').addClass("card-active");
//   });
// });



let cards = document.querySelectorAll('.js-category-choice');

cards.forEach((card) => {
  card.addEventListener('click', function(e){
    cards.forEach((card) => {
      card.querySelector('.overlay-2').classList.remove('card-active')
    });
    card.querySelector('.overlay-2').classList.add('card-active');
  });
});
