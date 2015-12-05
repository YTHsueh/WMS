require 'test_helper'

class InProcuresControllerTest < ActionController::TestCase
  setup do
    @in_procure = in_procures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:in_procures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create in_procure" do
    assert_difference('InProcure.count') do
      post :create, in_procure: { date_procure: @in_procure.date_procure, note: @in_procure.note, procure: @in_procure.procure }
    end

    assert_redirected_to in_procure_path(assigns(:in_procure))
  end

  test "should show in_procure" do
    get :show, id: @in_procure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @in_procure
    assert_response :success
  end

  test "should update in_procure" do
    patch :update, id: @in_procure, in_procure: { date_procure: @in_procure.date_procure, note: @in_procure.note, procure: @in_procure.procure }
    assert_redirected_to in_procure_path(assigns(:in_procure))
  end

  test "should destroy in_procure" do
    assert_difference('InProcure.count', -1) do
      delete :destroy, id: @in_procure
    end

    assert_redirected_to in_procures_path
  end
end
