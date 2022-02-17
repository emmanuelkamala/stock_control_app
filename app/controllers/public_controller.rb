class PublicController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
  def index
  end

  def dashboard 
    @incomes = Income.all 
    @expenses = Expense.all
    @flocks = Flock.all
  end

  def financial
    # @search = IncomeSearch.new(params[:search])
    # @incomes = @search.scope
  end

  def production
  end
end
