class StaticPagesController < ApplicationController
  
  before_action :authenticate_user!,only: [:expense_income_sheet, :welcome]
  
  
  def home
  
  end

  def expense_income_sheet
    
    @income=Income.find(1)
    @expenses=Transaction.find(49)
    @month=Month.all
    @user=current_user
    
    
    
  end
  
  def welcome
    
     @user=current_user
    
  end 

   
  def help
  end

  def contact
  end

  
end 