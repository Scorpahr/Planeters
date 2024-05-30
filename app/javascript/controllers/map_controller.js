// app/javascript/controllers/map_controller.js
import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl' // Don't forget this!

export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    const map = new mapboxgl.Map({
      container: 'map', // container ID
      style: 'mapbox://styles/mapbox/streets-v12', // style URL
      center: [-74.5, 40], // starting position [lng, lat]
      zoom: 9 // starting zoom
    });

    // new mapboxgl.Marker()
    //   .setLngLat([2.294481, 48.858370])
    //   .addTo(map)

      this.#addMarkersToMap(map)
      this.#fitMapToMarkers(map)

  }

  #addMarkersToMap(map) {
    new mapboxgl.Marker()
    .setLngLat([this.markerValue.longitude,this.markerValue.latitude])
    .addTo(map)
  }

  #fitMapToMarkers(map) {
    // const nav = new mapboxgl.NavigationControl();
    // this.map.addControl(nav, 'top-left');
    // this.map.scrollZoom.disable();

    const bounds = new mapboxgl.LngLatBounds();
    bounds.extend([this.markerValue.longitude, this.markerValue.latitude]);
    map.fitBounds(bounds, { padding: 70, maxZoom: 7, duration: 1500 });
  }
}
