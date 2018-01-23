require 'test_helper'

class PageGeneratorControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get page_generator_controller_home_url
    assert_response :success
  end

  test "should get about" do
    get page_generator_controller_about_url
    assert_response :success
  end

  test "should get contact" do
    get page_generator_controller_contact_url
    assert_response :success
  end

  test "should get faq" do
    get page_generator_controller_faq_url
    assert_response :success
  end

  test "should get archive" do
    get page_generator_controller_archive_url
    assert_response :success
  end

end
