import { Controller } from "@hotwired/stimulus";
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder";

export default class extends Controller {
  static targets = [
    "button",
    "list",
    "map",
    "buttonmap",
    "buttonlist",
    "container",
  ];
  static values = {
    apiKey: String,
    markers: Array,
    hasPopup: Boolean,
  };

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.containerTarget,
      style: "mapbox://styles/mapbox/streets-v10",
    });

    this.#fitMapToMarkers();

    if (this.hasPopupValue) {
      this.#addMarkersToMap();
      this.map.addControl(
        new MapboxGeocoder({
          accessToken: mapboxgl.accessToken,
          mapboxgl: mapboxgl,
        })
      );
    } else {
      this.#addMarkerNoPopup();
    }
  }

  #addMarkerNoPopup() {
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker().setLngLat([marker.lng, marker.lat]).addTo(this.map);
    });
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html);
      new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map);
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach((marker) =>
      bounds.extend([marker.lng, marker.lat])
    );
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }

  change(event) {
    console.log("click");
    this.buttonmapTarget.classList.toggle("d-none");
    this.buttonlistTarget.classList.toggle("d-none");
    this.listTarget.classList.toggle("d-none");
    this.mapTarget.classList.toggle("d-none");
    this.map.resize();
  }
}
