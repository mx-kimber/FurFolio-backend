require "application_system_test_case"

class CommissionLogsTest < ApplicationSystemTestCase
  setup do
    @commission_log = commission_logs(:one)
  end

  test "visiting the index" do
    visit commission_logs_url
    assert_selector "h1", text: "Commission logs"
  end

  test "should create commission log" do
    visit commission_logs_url
    click_on "New commission log"

    fill_in "Calculated commission", with: @commission_log.calculated_commission
    fill_in "Date", with: @commission_log.date
    fill_in "Dog", with: @commission_log.dog_id
    fill_in "Percentage", with: @commission_log.percentage
    fill_in "Price", with: @commission_log.price
    fill_in "User", with: @commission_log.user_id
    click_on "Create Commission log"

    assert_text "Commission log was successfully created"
    click_on "Back"
  end

  test "should update Commission log" do
    visit commission_log_url(@commission_log)
    click_on "Edit this commission log", match: :first

    fill_in "Calculated commission", with: @commission_log.calculated_commission
    fill_in "Date", with: @commission_log.date
    fill_in "Dog", with: @commission_log.dog_id
    fill_in "Percentage", with: @commission_log.percentage
    fill_in "Price", with: @commission_log.price
    fill_in "User", with: @commission_log.user_id
    click_on "Update Commission log"

    assert_text "Commission log was successfully updated"
    click_on "Back"
  end

  test "should destroy Commission log" do
    visit commission_log_url(@commission_log)
    click_on "Destroy this commission log", match: :first

    assert_text "Commission log was successfully destroyed"
  end
end
