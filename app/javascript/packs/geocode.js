import GMaps from 'gmaps';


const formElement = document.getElementById('searchForm');
formElement.addEventListener('submit', (event) => {
  // prevent form's default behavior
  event.preventDefault();

  // get input value
  const address = document.getElementById('address').value;

  // trigger request to Google Maps API
  fetch(`https://maps.googleapis.com/maps/api/geocode/json?address=${address}`)
    .then(response => response.json())
    .then((data) => {
      const coordinates = data.results[0].geometry.location;
      injectCoordinates(coordinates);
      injectMap(coordinates);
    });
});

function injectCoordinates(coordinates) {
  const paragraphElement = document.getElementById('coordinates');
  paragraphElement.innerText = `${coordinates.lat}, ${coordinates.lng}`;
}

function injectMap(coordinates) {
  const lat = coordinates.lat;
  const lng = coordinates.lng;

  const map = new GMaps({ el: '#map', lat: lat, lng: lng, zoom: 14 });
  const marker = { lat: lat, lng: lng };
  map.addMarkers([ marker ]);
}

export { injectCoordinates, injectMap };
