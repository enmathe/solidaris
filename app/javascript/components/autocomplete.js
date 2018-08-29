function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var missionAddress = document.getElementById('mission_address');
    var userAddress = document.getElementById('query');
    if (missionAddress) {
      var autocomplete = new google.maps.places.Autocomplete(missionAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(missionAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
    if (userAddress) {
      var autocomplete = new google.maps.places.Autocomplete(userAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(userAddress, 'keydown', function(e) {
      });
    }
  });
}

export { autocomplete };
