require 'test_helper'

class MaterialsControllerTest < ActionController::TestCase
  setup do
    @material = materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material" do
    assert_difference('Material.count') do
      post :create, material: { cat1: @material.cat1, cat2: @material.cat2, cat3: @material.cat3, cat4: @material.cat4, description: @material.description, height: @material.height, lead_time: @material.lead_time, length: @material.length, memo: @material.memo, min_stock: @material.min_stock, name: @material.name, num_material_drawing: @material.num_material_drawing, num_sup: @material.num_sup, pick_unit: @material.pick_unit, replenish_period: @material.replenish_period, replenish_policy: @material.replenish_policy, serial: @material.serial, spec: @material.spec, supplier: @material.supplier, unit: @material.unit, weight: @material.weight, weight_unit: @material.weight_unit, width: @material.width }
    end

    assert_redirected_to material_path(assigns(:material))
  end

  test "should show material" do
    get :show, id: @material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material
    assert_response :success
  end

  test "should update material" do
    patch :update, id: @material, material: { cat1: @material.cat1, cat2: @material.cat2, cat3: @material.cat3, cat4: @material.cat4, description: @material.description, height: @material.height, lead_time: @material.lead_time, length: @material.length, memo: @material.memo, min_stock: @material.min_stock, name: @material.name, num_material_drawing: @material.num_material_drawing, num_sup: @material.num_sup, pick_unit: @material.pick_unit, replenish_period: @material.replenish_period, replenish_policy: @material.replenish_policy, serial: @material.serial, spec: @material.spec, supplier: @material.supplier, unit: @material.unit, weight: @material.weight, weight_unit: @material.weight_unit, width: @material.width }
    assert_redirected_to material_path(assigns(:material))
  end

  test "should destroy material" do
    assert_difference('Material.count', -1) do
      delete :destroy, id: @material
    end

    assert_redirected_to materials_path
  end
end
