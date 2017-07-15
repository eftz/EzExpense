class PagesControllerController < ApplicationController
  def index
  	@travel_expenses = TravelExpense.all
  	@bills = Bill.all
  end
end
