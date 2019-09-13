class Income < ApplicationRecord
    belongs_to :month
    belongs_to:user
    
       validates :amount,presence:{message:"the amount cannot be null"}
       validates :description,presence:{message:"the description cannot be null"}
       validates :month,presence:{message:"please enter a valid month "}
  
       
    def income_by_month
     @total=0
     Income.all.each do|trans|
     
     @total+=trans.amount
     
    end
    return @total
    end 
end
