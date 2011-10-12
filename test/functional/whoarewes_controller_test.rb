require 'test_helper'

class WhoarewesControllerTest < ActionController::TestCase
  setup do
    @whoarewe = whoarewes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whoarewes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whoarewe" do
    assert_difference('Whoarewe.count') do
      post :create, whoarewe: @whoarewe.attributes
    end

    assert_redirected_to whoarewe_path(assigns(:whoarewe))
  end

  test "should show whoarewe" do
    get :show, id: @whoarewe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @whoarewe.to_param
    assert_response :success
  end

  test "should update whoarewe" do
    put :update, id: @whoarewe.to_param, whoarewe: @whoarewe.attributes
    assert_redirected_to whoarewe_path(assigns(:whoarewe))
  end

  test "should destroy whoarewe" do
    assert_difference('Whoarewe.count', -1) do
      delete :destroy, id: @whoarewe.to_param
    end

    assert_redirected_to whoarewes_path
  end
end
