require 'test_helper'

class ProcuresControllerTest < ActionController::TestCase
  setup do
    @procure = procures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procure" do
    assert_difference('Procure.count') do
      post :create, procure: { date: @procure.date, note: @procure.note, serial: @procure.serial }
    end

    assert_redirected_to procure_path(assigns(:procure))
  end

  test "should show procure" do
    get :show, id: @procure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procure
    assert_response :success
  end

  test "should update procure" do
    patch :update, id: @procure, procure: { date: @procure.date, note: @procure.note, serial: @procure.serial }
    assert_redirected_to procure_path(assigns(:procure))
  end

  test "should destroy procure" do
    assert_difference('Procure.count', -1) do
      delete :destroy, id: @procure
    end

    assert_redirected_to procures_path
  end
end
