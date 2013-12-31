require 'test_helper'

class CtaControllerTest < ActionController::TestCase
  setup do
    @ctum = cta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ctum" do
    assert_difference('Ctum.count') do
      post :create, ctum: { cta1_button: @ctum.cta1_button, cta1_caption: @ctum.cta1_caption, cta1_header: @ctum.cta1_header, cta1_url: @ctum.cta1_url, cta2_button: @ctum.cta2_button, cta2_caption: @ctum.cta2_caption, cta2_header: @ctum.cta2_header, cta2_url: @ctum.cta2_url, cta3_button: @ctum.cta3_button, cta3_caption: @ctum.cta3_caption, cta3_header: @ctum.cta3_header, cta3_url: @ctum.cta3_url }
    end

    assert_redirected_to ctum_path(assigns(:ctum))
  end

  test "should show ctum" do
    get :show, id: @ctum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ctum
    assert_response :success
  end

  test "should update ctum" do
    patch :update, id: @ctum, ctum: { cta1_button: @ctum.cta1_button, cta1_caption: @ctum.cta1_caption, cta1_header: @ctum.cta1_header, cta1_url: @ctum.cta1_url, cta2_button: @ctum.cta2_button, cta2_caption: @ctum.cta2_caption, cta2_header: @ctum.cta2_header, cta2_url: @ctum.cta2_url, cta3_button: @ctum.cta3_button, cta3_caption: @ctum.cta3_caption, cta3_header: @ctum.cta3_header, cta3_url: @ctum.cta3_url }
    assert_redirected_to ctum_path(assigns(:ctum))
  end

  test "should destroy ctum" do
    assert_difference('Ctum.count', -1) do
      delete :destroy, id: @ctum
    end

    assert_redirected_to cta_path
  end
end
