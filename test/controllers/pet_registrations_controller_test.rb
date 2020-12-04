require 'test_helper'

class PetRegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_registration = pet_registrations(:one)
  end

  test "should get index" do
    get pet_registrations_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_registration_url
    assert_response :success
  end

  test "should create pet_registration" do
    assert_difference('PetRegistration.count') do
      post pet_registrations_url, params: { pet_registration: { birthdate: @pet_registration.birthdate, breed: @pet_registration.breed, kind: @pet_registration.kind, name: @pet_registration.name } }
    end

    assert_redirected_to pet_registration_url(PetRegistration.last)
  end

  test "should show pet_registration" do
    get pet_registration_url(@pet_registration)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_registration_url(@pet_registration)
    assert_response :success
  end

  test "should update pet_registration" do
    patch pet_registration_url(@pet_registration), params: { pet_registration: { birthdate: @pet_registration.birthdate, breed: @pet_registration.breed, kind: @pet_registration.kind, name: @pet_registration.name } }
    assert_redirected_to pet_registration_url(@pet_registration)
  end

  test "should destroy pet_registration" do
    assert_difference('PetRegistration.count', -1) do
      delete pet_registration_url(@pet_registration)
    end

    assert_redirected_to pet_registrations_url
  end
end
