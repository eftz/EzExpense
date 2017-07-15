class TravelExpensesController < ApplicationController
  before_action :set_travel_expense, only: [:show, :edit, :update, :destroy]

  # GET /travel_expenses
  # GET /travel_expenses.json
  def index
    @travel_expenses = TravelExpense.all
  end

  # GET /travel_expenses/1
  # GET /travel_expenses/1.json
  def show
  end

  # GET /travel_expenses/new
  def new
    @travel_expense = TravelExpense.new
  end

  # GET /travel_expenses/1/edit
  def edit
  end

  # POST /travel_expenses
  # POST /travel_expenses.json
  def create
    @travel_expense = TravelExpense.new(travel_expense_params)

    respond_to do |format|
      if @travel_expense.save
        format.html { redirect_to @travel_expense, notice: 'Travel expense was successfully created.' }
        format.json { render :show, status: :created, location: @travel_expense }
      else
        format.html { render :new }
        format.json { render json: @travel_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_expenses/1
  # PATCH/PUT /travel_expenses/1.json
  def update
    respond_to do |format|
      if @travel_expense.update(travel_expense_params)
        format.html { redirect_to @travel_expense, notice: 'Travel expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_expense }
      else
        format.html { render :edit }
        format.json { render json: @travel_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_expenses/1
  # DELETE /travel_expenses/1.json
  def destroy
    @travel_expense.destroy
    respond_to do |format|
      format.html { redirect_to travel_expenses_url, notice: 'Travel expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_expense
      @travel_expense = TravelExpense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_expense_params
      params.require(:travel_expense).permit(:start, :end, :price, :location)
    end
end
