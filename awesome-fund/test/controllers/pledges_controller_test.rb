require 'test_helper'

class PledgesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get pledges_create_url
    assert_response :success
  end

  test "should get edit" do
    get pledges_edit_url
    assert_response :success
  end

  test "should get show" do
    get pledges_show_url
    assert_response :success
  end

end
