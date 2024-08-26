require "test_helper"

class CommissionLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commission_log = commission_logs(:one)
  end

  test "should get index" do
    get commission_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_commission_log_url
    assert_response :success
  end

  test "should create commission_log" do
    assert_difference("CommissionLog.count") do
      post commission_logs_url, params: { commission_log: { calculated_commission: @commission_log.calculated_commission, date: @commission_log.date, dog_id: @commission_log.dog_id, percentage: @commission_log.percentage, price: @commission_log.price, user_id: @commission_log.user_id } }
    end

    assert_redirected_to commission_log_url(CommissionLog.last)
  end

  test "should show commission_log" do
    get commission_log_url(@commission_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_commission_log_url(@commission_log)
    assert_response :success
  end

  test "should update commission_log" do
    patch commission_log_url(@commission_log), params: { commission_log: { calculated_commission: @commission_log.calculated_commission, date: @commission_log.date, dog_id: @commission_log.dog_id, percentage: @commission_log.percentage, price: @commission_log.price, user_id: @commission_log.user_id } }
    assert_redirected_to commission_log_url(@commission_log)
  end

  test "should destroy commission_log" do
    assert_difference("CommissionLog.count", -1) do
      delete commission_log_url(@commission_log)
    end

    assert_redirected_to commission_logs_url
  end
end
