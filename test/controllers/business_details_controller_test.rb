require 'test_helper'

class BusinessDetailsControllerTest < ActionController::TestCase
  setup do
    @business_detail = business_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_detail" do
    assert_difference('BusinessDetail.count') do
      post :create, business_detail: { business_id: @business_detail.business_id, description: @business_detail.description, email: @business_detail.email, facebook: @business_detail.facebook, phone: @business_detail.phone, twitter: @business_detail.twitter, website: @business_detail.website }
    end

    assert_redirected_to business_detail_path(assigns(:business_detail))
  end

  test "should show business_detail" do
    get :show, id: @business_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_detail
    assert_response :success
  end

  test "should update business_detail" do
    patch :update, id: @business_detail, business_detail: { business_id: @business_detail.business_id, description: @business_detail.description, email: @business_detail.email, facebook: @business_detail.facebook, phone: @business_detail.phone, twitter: @business_detail.twitter, website: @business_detail.website }
    assert_redirected_to business_detail_path(assigns(:business_detail))
  end

  test "should destroy business_detail" do
    assert_difference('BusinessDetail.count', -1) do
      delete :destroy, id: @business_detail
    end

    assert_redirected_to business_details_path
  end
end
