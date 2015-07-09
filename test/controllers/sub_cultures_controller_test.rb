require 'test_helper'

class SubCulturesControllerTest < ActionController::TestCase
  setup do
    @sub_culture = sub_cultures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_cultures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_culture" do
    assert_difference('SubCulture.count') do
      post :create, sub_culture: { culture_id: @sub_culture.culture_id }
    end

    assert_redirected_to sub_culture_path(assigns(:sub_culture))
  end

  test "should show sub_culture" do
    get :show, id: @sub_culture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_culture
    assert_response :success
  end

  test "should update sub_culture" do
    patch :update, id: @sub_culture, sub_culture: { culture_id: @sub_culture.culture_id }
    assert_redirected_to sub_culture_path(assigns(:sub_culture))
  end

  test "should destroy sub_culture" do
    assert_difference('SubCulture.count', -1) do
      delete :destroy, id: @sub_culture
    end

    assert_redirected_to sub_cultures_path
  end
end
