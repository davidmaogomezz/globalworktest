require "application_system_test_case"

class AppliesTest < ApplicationSystemTestCase
  setup do
    @apply = applies(:one)
  end

  test "visiting the index" do
    visit applies_url
    assert_selector "h1", text: "Applies"
  end

  test "creating a Apply" do
    visit applies_url
    click_on "New Apply"

    fill_in "Birthdate", with: @apply.birthdate
    fill_in "Last name candidate", with: @apply.last_name_candidate
    fill_in "Name candidate", with: @apply.name_candidate
    fill_in "Number document", with: @apply.number_document
    fill_in "Phone", with: @apply.phone
    fill_in "Vacancy", with: @apply.vacancy_id
    click_on "Create Apply"

    assert_text "Apply was successfully created"
    click_on "Back"
  end

  test "updating a Apply" do
    visit applies_url
    click_on "Edit", match: :first

    fill_in "Birthdate", with: @apply.birthdate
    fill_in "Last name candidate", with: @apply.last_name_candidate
    fill_in "Name candidate", with: @apply.name_candidate
    fill_in "Number document", with: @apply.number_document
    fill_in "Phone", with: @apply.phone
    fill_in "Vacancy", with: @apply.vacancy_id
    click_on "Update Apply"

    assert_text "Apply was successfully updated"
    click_on "Back"
  end

  test "destroying a Apply" do
    visit applies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apply was successfully destroyed"
  end
end
