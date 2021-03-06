require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  setup do
    @registration = registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registrations)
  end

  test "should create registration" do
    assert_difference('Registration.count') do
      post :create, registration: { course_id: @registration.course_id, semester_id: @registration.semester_id, student_id: @registration.student_id }
    end

    assert_response 201
  end

  test "should show registration" do
    get :show, id: @registration
    assert_response :success
  end

  test "should update registration" do
    put :update, id: @registration, registration: { course_id: @registration.course_id, semester_id: @registration.semester_id, student_id: @registration.student_id }
    assert_response 204
  end

  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete :destroy, id: @registration
    end

    assert_response 204
  end
end
