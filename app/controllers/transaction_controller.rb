class TransactionController < ApplicationController
  
  
  before_action :authenticate_user!
  before_action :current_user
  
  def index 
 
      
    @transaction=Transaction.all
    @month=Month.all
    @category=Category.all
    @total=0
    @add=0
    
    
  end 
  
  def new
    @user=current_user
    @month=Month.all
    @category=Category.all
    @transaction=Transaction.new 
    @transaction.user=current_user
    @transaction.amount=params[:amount]
    @transaction.description=params[:description]
    @transaction.month_id=params[:month_id]
    @transaction.category_id=params[:category_id]
    
    
    if @transaction.save
    flash[:success] = "creation success"
    redirect_to"/all_expense"
    else
    render 'new'
    end
  end
  
  def show 
    @month=Month.all
    @category=Category.all
    @transaction=Transaction.find(params[:id])
    
  end 
  
  def update 
    @transaction=Transaction.find(params[:id ])
    @transaction.amount=params[:amount]
    @transaction.description=params[:description]
    @transaction.month_id=params[:month_id]
    @transaction.category_id=params[:category_id]
  
    
    if @transaction.save
    flash[:success] = "update success"
    redirect_to"/all_expense"
    else
    render 'show'
    end
    
    
   
  end 
  def destroy
    
    @transaction=Transaction.find(params[:id ])
    @transaction.destroy
    redirect_to "/all_expense"
  end 
  def monthly_transac
    
      @total=0
      @month=Month.find(params[:id])
   
  end 
  
  def transaction_by_type
    @month=Month.all
    @category=Category.all
    
  end 
  
  def category_transac
    @user=current_user
    @total=0
    @category=Category.find(params[:id])
  end 

  private 
  
  def transactions_params
    params.require(:transactions).permit(:amount,:description,:month_id,:category_id)
  end 

  
end
