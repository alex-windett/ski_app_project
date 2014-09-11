require 'test_helper'

class ResortsControllerTest < ActionController::TestCase
  setup do
    @resort = resorts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resorts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resort" do
    assert_difference('Resort.count') do
      post :create, resort: { country_id: @resort.country_id, description: @resort.description, image: @resort.image, name: @resort.name }
    end

    assert_redirected_to resort_path(assigns(:resort))
  end

  test "should show resort" do
    get :show, id: @resort
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resort
    assert_response :success
  end

  test "should update resort" do
    put :update, id: @resort, resort: { country_id: @resort.country_id, description: @resort.description, image: @resort.image, name: @resort.name }
    assert_redirected_to resort_path(assigns(:resort))
  end

  test "should destroy resort" do
    assert_difference('Resort.count', -1) do
      delete :destroy, id: @resort
    end

    assert_redirected_to resorts_path
  end
end
