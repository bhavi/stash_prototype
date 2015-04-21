require 'test_helper'

class InstitutionsControllerTest < ActionController::TestCase
  setup do
    @institution = institutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institution" do
    assert_difference('Institution.count') do
      post :create, institution: { abbreviation: @institution.abbreviation, campus: @institution.campus, external_id_strip: @institution.external_id_strip, landing_page: @institution.landing_page, logo: @institution.logo, long_name: @institution.long_name, short_name: @institution.short_name, url: @institution.url, url_text: @institution.url_text }
    end

    assert_redirected_to institution_path(assigns(:institution))
  end

  test "should show institution" do
    get :show, id: @institution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institution
    assert_response :success
  end

  test "should update institution" do
    patch :update, id: @institution, institution: { abbreviation: @institution.abbreviation, campus: @institution.campus, external_id_strip: @institution.external_id_strip, landing_page: @institution.landing_page, logo: @institution.logo, long_name: @institution.long_name, short_name: @institution.short_name, url: @institution.url, url_text: @institution.url_text }
    assert_redirected_to institution_path(assigns(:institution))
  end

  test "should destroy institution" do
    assert_difference('Institution.count', -1) do
      delete :destroy, id: @institution
    end

    assert_redirected_to institutions_path
  end
end
