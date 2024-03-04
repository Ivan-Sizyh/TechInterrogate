import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["grade", "vacancy"];

  selectVacancy() {
    const selectedVacancyId = this.vacancyTarget.value;
    const selectedGradeId = this.gradeTarget.value;

    const url = new URL(window.location.href);

    if (selectedVacancyId === '') {
      url.searchParams.delete("vacancy_id");
    } else {
      url.searchParams.set("vacancy_id", selectedVacancyId);
    }

    if (selectedGradeId) {
      url.searchParams.set("grade_id", selectedGradeId);
    }

    window.location.href = url.toString();
  }
}
