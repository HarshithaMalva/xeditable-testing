require 'test_helper'

class ExmsControllerTest < ActionController::TestCase
  setup do
    @exm = exms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exm" do
    assert_difference('Exm.count') do
      post :create, exm: { name: @exm.name }
    end

    assert_redirected_to exm_path(assigns(:exm))
  end

  test "should show exm" do
    get :show, id: @exm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exm
    assert_response :success
  end

  test "should update exm" do
    patch :update, id: @exm, exm: { name: @exm.name }
    assert_redirected_to exm_path(assigns(:exm))
  end

  test "should destroy exm" do
    assert_difference('Exm.count', -1) do
      delete :destroy, id: @exm
    end

    assert_redirected_to exms_path
  end
end
