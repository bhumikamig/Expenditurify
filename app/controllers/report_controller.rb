class ReportController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def search
  	@expense = Expense.calculate_expense(params)
  	respond_to do |format|
      format.js { @expense }
    end
  end
end
