import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["grade", "vacancy"];

  selectGrade() {
    const selectedVacancyId = this.vacancyTarget.value;
    const selectedGradeId = this.gradeTarget.value;

    const url = new URL(window.location.href);

    if (selectedGradeId === '') {
      url.searchParams.delete("grade_id");
    } else {
      url.searchParams.set("grade_id", selectedGradeId);
    }

    if (selectedVacancyId) {
      url.searchParams.set("vacancy_id", selectedVacancyId);
    }

    window.location.href = url.toString();
  }
}
