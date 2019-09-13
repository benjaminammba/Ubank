class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!
  
  
   private
   
  
    def after_sign_up_path_for(resource)
      
    welcome_path
  
    end
  
   def after_update_path_for(resource)
      
       welcome_path
   end
end