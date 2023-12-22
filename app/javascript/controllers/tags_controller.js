import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["tag"];

  selectTag() {
    const selectedTagId = this.tagTarget.value;

    if (selectedTagId === '') {
      window.location.href = window.location.origin + window.location.pathname;
    } else {
      const url = new URL(window.location.href);
      url.searchParams.set("tag_id", selectedTagId);
      window.location.href = url.toString();
    }
  }
}
