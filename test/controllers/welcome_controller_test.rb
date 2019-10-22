require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get main_page" do
    get welcome_main_page_url
    assert_response :success
  end

  test "should get all_task" do
    get welcome_all_task_url
    assert_response :success
  end

  test "should get queue" do
    get welcome_queue_url
    assert_response :success
  end

  test "should get helpful_tips" do
    get welcome_helpful_tips_url
    assert_response :success
  end

  test "should get chat" do
    get welcome_chat_url
    assert_response :success
  end

end
