require 'test_helper'

class SemestersControllerTest < ActionController::TestCase
  setup do
    @semester = semesters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:semesters)
  end

  test "should create semester" do
    assert_difference('Semester.count') do
      post :create, semester: { sem: @semester.sem, student_id: @semester.student_id }
    end

    assert_response 201
  end

  test "should show semester" do
    get :show, id: @semester
    assert_response :success
  end

  test "should update semester" do
    put :update, id: @semester, semester: { sem: @semester.sem, student_id: @semester.student_id }
    assert_response 204
  end

  test "should destroy semester" do
    assert_difference('Semester.count', -1) do
      delete :destroy, id: @semester
    end

    assert_response 204
  end
end
