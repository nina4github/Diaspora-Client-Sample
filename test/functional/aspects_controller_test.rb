require 'test_helper'

class AspectsControllerTest < ActionController::TestCase
  setup do
    @aspect = aspects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aspects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aspect" do
    assert_difference('Aspect.count') do
      post :create, :aspect => @aspect.attributes
    end

    assert_redirected_to aspect_path(assigns(:aspect))
  end

  test "should show aspect" do
    get :show, :id => @aspect.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @aspect.to_param
    assert_response :success
  end

  test "should update aspect" do
    put :update, :id => @aspect.to_param, :aspect => @aspect.attributes
    assert_redirected_to aspect_path(assigns(:aspect))
  end

  test "should destroy aspect" do
    assert_difference('Aspect.count', -1) do
      delete :destroy, :id => @aspect.to_param
    end

    assert_redirected_to aspects_path
  end
end
