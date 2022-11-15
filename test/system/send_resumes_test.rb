require "application_system_test_case"

class SendResumesTest < ApplicationSystemTestCase
  setup do
    @send_resume = send_resumes(:one)
  end

  test "visiting the index" do
    visit send_resumes_url
    assert_selector "h1", text: "Send resumes"
  end

  test "should create send resume" do
    visit send_resumes_url
    click_on "New send resume"

    fill_in "Receiver", with: @send_resume.receiver
    fill_in "Sender", with: @send_resume.sender
    click_on "Create Send resume"

    assert_text "Send resume was successfully created"
    click_on "Back"
  end

  test "should update Send resume" do
    visit send_resume_url(@send_resume)
    click_on "Edit this send resume", match: :first

    fill_in "Receiver", with: @send_resume.receiver
    fill_in "Sender", with: @send_resume.sender
    click_on "Update Send resume"

    assert_text "Send resume was successfully updated"
    click_on "Back"
  end

  test "should destroy Send resume" do
    visit send_resume_url(@send_resume)
    click_on "Destroy this send resume", match: :first

    assert_text "Send resume was successfully destroyed"
  end
end
