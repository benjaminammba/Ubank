class Transaction < ApplicationRecord
    belongs_to:user
    belongs_to:month
    belongs_to:category
    
       validates :amount,presence:{message:"the amount cannot be null"}
       validates :description,presence:{message:"the description cannot be null"}
       validates :month,presence:{message:"please enter a valid month "}
       validates :category,presence:{message:"please choose a category"}
       
       
       scope :january,->{where(month_id:1)}
       
       
       
 def total_transaction
     @total=0
     Transaction.all.each do|trans|
     
     @total+=trans.amount
     
    end
    return @total
    
 end 
end
