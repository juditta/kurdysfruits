require 'test_helper'

class PlantstypesControllerTest < ActionController::TestCase
  setup do
    @plantstype = plantstypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plantstypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plantstype" do
    assert_difference('Plantstype.count') do
      post :create, plantstype: @plantstype.attributes
    end

    assert_redirected_to plantstype_path(assigns(:plantstype))
  end

  test "should show plantstype" do
    get :show, id: @plantstype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plantstype.to_param
    assert_response :success
  end

  test "should update plantstype" do
    put :update, id: @plantstype.to_param, plantstype: @plantstype.attributes
    assert_redirected_to plantstype_path(assigns(:plantstype))
  end

  test "should destroy plantstype" do
    assert_difference('Plantstype.count', -1) do
      delete :destroy, id: @plantstype.to_param
    end

    assert_redirected_to plantstypes_path
  end
end
