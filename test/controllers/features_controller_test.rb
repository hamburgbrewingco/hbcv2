require 'test_helper'

class FeaturesControllerTest < ActionController::TestCase
  setup do
    @feature = features(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:features)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feature" do
    assert_difference('Feature.count') do
      post :create, feature: { cta1_button: @feature.cta1_button, cta1_caption: @feature.cta1_caption, cta1_header: @feature.cta1_header, cta1_url: @feature.cta1_url, cta2_button: @feature.cta2_button, cta2_caption: @feature.cta2_caption, cta2_header: @feature.cta2_header, cta2_url: @feature.cta2_url, cta3_button: @feature.cta3_button, cta3_caption: @feature.cta3_caption, cta3_header: @feature.cta3_header, cta3_url: @feature.cta3_url }
    end

    assert_redirected_to feature_path(assigns(:feature))
  end

  test "should show feature" do
    get :show, id: @feature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feature
    assert_response :success
  end

  test "should update feature" do
    patch :update, id: @feature, feature: { cta1_button: @feature.cta1_button, cta1_caption: @feature.cta1_caption, cta1_header: @feature.cta1_header, cta1_url: @feature.cta1_url, cta2_button: @feature.cta2_button, cta2_caption: @feature.cta2_caption, cta2_header: @feature.cta2_header, cta2_url: @feature.cta2_url, cta3_button: @feature.cta3_button, cta3_caption: @feature.cta3_caption, cta3_header: @feature.cta3_header, cta3_url: @feature.cta3_url }
    assert_redirected_to feature_path(assigns(:feature))
  end

  test "should destroy feature" do
    assert_difference('Feature.count', -1) do
      delete :destroy, id: @feature
    end

    assert_redirected_to features_path
  end
end
