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
    @incomes = Income.created_between(1.year.ago, Time.now)
  end

  def production
  end
end
