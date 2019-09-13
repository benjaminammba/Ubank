class Month < ApplicationRecord
        belongs_to:user
      has_many :transactions
      has_many :incomes 
   
     
       




   def month_total_expense(month)
      
      if self.id==month.id 
         
         @total_expense=0  
         
          Transaction.all.each do |incomes| 
            
              if incomes.month_id==self.id
                 
                 @total_expense += incomes.amount
                
              end
             
          
           end
            return @total_expense
      end 
   end    
   
 
    def month_total_income(month)
      
      if self.id==month.id 
         
         @total_income=0  
         
          Income.all.each do |incomes| 
            
              if incomes.month_id==self.id
                 
                 @total_income+= incomes.amount
                
              end
             
          
           end
            return @total_income
      end 
    end      
    
      
    def month_rest(month)
       
      @rest=0
      
      if self.id==month.id 
         
        @rest= month_total_income(month)-month_total_expense(month)
        
       return @rest
      else
         return 0
      end 
    end 
    
end 
