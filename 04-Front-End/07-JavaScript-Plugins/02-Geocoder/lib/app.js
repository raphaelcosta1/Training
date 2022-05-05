// // TODO: Write your JS code in here
import mapboxgl from 'mapbox-gl';

const form = document.querySelector("form");
form.addEventListener("submit", (event) => {
  event.preventDefault();
  const userInput = document.querySelector("#adress").value;
  console.log("submited");
  fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${userInput}.json?access_token=pk.eyJ1IjoicmEyIiwiYSI6ImNraGV6eTM4ODBsdHIyc29ydnNkajJzOXgifQ.mJsF0o5HhQLDhOiJOcvrTA`)
    .then(response => response.json())
    .then((data) => {
      const coordinates = data.features[0].geometry.coordinates;
      document.querySelector("#coordinates").innerHTML = coordinates;
      mapboxgl.accessToken = 'pk.eyJ1IjoicmEyIiwiYSI6ImNraGV6eTM4ODBsdHIyc29ydnNkajJzOXgifQ.mJsF0o5HhQLDhOiJOcvrTA';
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v9',
        center: coordinates,
        zoom: 12
      });
      new mapboxgl.Marker()
        .setLngLat(coordinates)
        .addTo(map);
    });
});
