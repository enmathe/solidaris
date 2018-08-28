function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    console.log("liiiiiiiiiiiiiiiiiiiiiiiiiii");
    var missionAddress = document.getElementById('mission_address');
    // var flatAddress = document.querySelectorAll('address-auto');
    if (missionAddress) {
      console.log("bouyaaahhh");
      var autocomplete = new google.maps.places.Autocomplete(missionAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(missionAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
