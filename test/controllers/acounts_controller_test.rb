require 'test_helper'

class AcountsControllerTest < ActionController::TestCase
  setup do
    @acount = acounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acount" do
    assert_difference('Acount.count') do
      post :create, acount: { acount_type: @acount.acount_type, balance: @acount.balance, charge: @acount.charge, client: @acount.client, date: @acount.date, description: @acount.description }
    end

    assert_redirected_to acount_path(assigns(:acount))
  end

  test "should show acount" do
    get :show, id: @acount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acount
    assert_response :success
  end

  test "should update acount" do
    patch :update, id: @acount, acount: { acount_type: @acount.acount_type, balance: @acount.balance, charge: @acount.charge, client: @acount.client, date: @acount.date, description: @acount.description }
    assert_redirected_to acount_path(assigns(:acount))
  end

  test "should destroy acount" do
    assert_difference('Acount.count', -1) do
      delete :destroy, id: @acount
    end

    assert_redirected_to acounts_path
  end
end
