require "test_helper"

class SendResumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @send_resume = send_resumes(:one)
  end

  test "should get index" do
    get send_resumes_url
    assert_response :success
  end

  test "should get new" do
    get new_send_resume_url
    assert_response :success
  end

  test "should create send_resume" do
    assert_difference("SendResume.count") do
      post send_resumes_url, params: { send_resume: { receiver: @send_resume.receiver, sender: @send_resume.sender } }
    end

    assert_redirected_to send_resume_url(SendResume.last)
  end

  test "should show send_resume" do
    get send_resume_url(@send_resume)
    assert_response :success
  end

  test "should get edit" do
    get edit_send_resume_url(@send_resume)
    assert_response :success
  end

  test "should update send_resume" do
    patch send_resume_url(@send_resume), params: { send_resume: { receiver: @send_resume.receiver, sender: @send_resume.sender } }
    assert_redirected_to send_resume_url(@send_resume)
  end

  test "should destroy send_resume" do
    assert_difference("SendResume.count", -1) do
      delete send_resume_url(@send_resume)
    end

    assert_redirected_to send_resumes_url
  end
end
