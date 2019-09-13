class IncomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user=current_user
    @income=Income.all 
    @total=0
    
  end

  def new
   
    @month=Month.all
    @income=Income.new 
    @income.amount=params[:amount]
    @income.description=params[:description]
    @income.month_id=params[:month_id]
    @income.user=current_user
    if @income.save
      flash[:success] = "creation success"
       redirect_to"/all_income"
     else
      render 'new'
    end
   
   
 
  end
  
  def monthly
    @total=0
    @month=Month.find(params[:id])
    
  end 
  def show 
    @month=Month.all
    @category=Category.all
    @income=Income.find(params[:id])
    
  end 
  
  def update 
    @income=Income.find(params[:id ])
    @income.amount=params[:amount]
    @income.description=params[:description]
    @income.month_id=params[:month_id]
    @income.user=current_user
    @income.save
    redirect_to"/all_income"
    
   
  end 
  
  def destroy
    
    @income=Income.find(params[:id ])
    @income.destroy
    redirect_to "/all_income"
  end 
  
  def income_by_month
    @transaction=Transaction.all
    @month=Month.all 
  end 
  
end
