function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var missionAddress = document.getElementById('mission_address');

    if (missionAddress) {
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
