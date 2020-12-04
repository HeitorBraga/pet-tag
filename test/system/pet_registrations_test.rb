require "application_system_test_case"

class PetRegistrationsTest < ApplicationSystemTestCase
  setup do
    @pet_registration = pet_registrations(:one)
  end

  test "visiting the index" do
    visit pet_registrations_url
    assert_selector "h1", text: "Pet Registrations"
  end

  test "creating a Pet registration" do
    visit pet_registrations_url
    click_on "New Pet Registration"

    fill_in "Birthdate", with: @pet_registration.birthdate
    fill_in "Breed", with: @pet_registration.breed
    fill_in "Kind", with: @pet_registration.kind
    fill_in "Name", with: @pet_registration.name
    click_on "Create Pet registration"

    assert_text "Pet registration was successfully created"
    click_on "Back"
  end

  test "updating a Pet registration" do
    visit pet_registrations_url
    click_on "Edit", match: :first

    fill_in "Birthdate", with: @pet_registration.birthdate
    fill_in "Breed", with: @pet_registration.breed
    fill_in "Kind", with: @pet_registration.kind
    fill_in "Name", with: @pet_registration.name
    click_on "Update Pet registration"

    assert_text "Pet registration was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet registration" do
    visit pet_registrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet registration was successfully destroyed"
  end
end
