require 'test_helper'

class VarConfsControllerTest < ActionController::TestCase
  setup do
    @var_conf = var_confs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:var_confs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create var_conf" do
    assert_difference('VarConf.count') do
      post :create, :var_conf => @var_conf.attributes
    end

    assert_redirected_to var_conf_path(assigns(:var_conf))
  end

  test "should show var_conf" do
    get :show, :id => @var_conf.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @var_conf.to_param
    assert_response :success
  end

  test "should update var_conf" do
    put :update, :id => @var_conf.to_param, :var_conf => @var_conf.attributes
    assert_redirected_to var_conf_path(assigns(:var_conf))
  end

  test "should destroy var_conf" do
    assert_difference('VarConf.count', -1) do
      delete :destroy, :id => @var_conf.to_param
    end

    assert_redirected_to var_confs_path
  end
end
