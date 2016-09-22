require 'test_helper'

class RewardsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get rewards_new_url
    assert_response :success
  end

  test "should get create" do
    get rewards_create_url
    assert_response :success
  end

  test "should get edit" do
    get rewards_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get rewards_destroy_url
    assert_response :success
  end

end
