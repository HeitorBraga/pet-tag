require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    fill_in "Address", with: @person.address
    fill_in "City", with: @person.city
    fill_in "Complement", with: @person.complement
    fill_in "District", with: @person.district
    fill_in "Name", with: @person.name
    fill_in "Number", with: @person.number
    fill_in "Telephone", with: @person.telephone
    fill_in "Zip", with: @person.zip
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "Address", with: @person.address
    fill_in "City", with: @person.city
    fill_in "Complement", with: @person.complement
    fill_in "District", with: @person.district
    fill_in "Name", with: @person.name
    fill_in "Number", with: @person.number
    fill_in "Telephone", with: @person.telephone
    fill_in "Zip", with: @person.zip
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
