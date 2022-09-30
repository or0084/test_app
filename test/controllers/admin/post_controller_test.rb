require "test_helper"

class Admin::PostControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_post_new_url
    assert_response :success
  end

  test "should get index" do
    get admin_post_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_post_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_post_edit_url
    assert_response :success
  end
end
