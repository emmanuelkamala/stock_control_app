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
  end

  def production
  end
end
