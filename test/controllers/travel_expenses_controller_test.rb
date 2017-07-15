require 'test_helper'

class TravelExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel_expense = travel_expenses(:one)
  end

  test "should get index" do
    get travel_expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_travel_expense_url
    assert_response :success
  end

  test "should create travel_expense" do
    assert_difference('TravelExpense.count') do
      post travel_expenses_url, params: { travel_expense: { end: @travel_expense.end, location: @travel_expense.location, start: @travel_expense.start, total_amount: @travel_expense.total_amount } }
    end

    assert_redirected_to travel_expense_url(TravelExpense.last)
  end

  test "should show travel_expense" do
    get travel_expense_url(@travel_expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_travel_expense_url(@travel_expense)
    assert_response :success
  end

  test "should update travel_expense" do
    patch travel_expense_url(@travel_expense), params: { travel_expense: { end: @travel_expense.end, location: @travel_expense.location, start: @travel_expense.start, total_amount: @travel_expense.total_amount } }
    assert_redirected_to travel_expense_url(@travel_expense)
  end

  test "should destroy travel_expense" do
    assert_difference('TravelExpense.count', -1) do
      delete travel_expense_url(@travel_expense)
    end

    assert_redirected_to travel_expenses_url
  end
end
