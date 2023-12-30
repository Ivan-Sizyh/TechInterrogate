import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["vacancy"];

  selectVacancy() {
    const selectedVacancyId = this.vacancyTarget.value;

    if (selectedVacancyId === '') {
      window.location.href = window.location.origin + window.location.pathname;
    } else {
      const url = new URL(window.location.href);
      url.searchParams.set("vacancy_id", selectedVacancyId);
      window.location.href = url.toString();
    }
  }
}
