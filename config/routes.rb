Rails.application.routes.draw do



  

  devise_for :users, :controllers =>{ registrations: "registrations" }
  
  get 'help'=>'static_pages#help'
  get 'contact'=>'static_pages#contact'
  get'welcome'=>'static_pages#welcome'
  get 'expense_income_sheet'=>'static_pages#expense_income_sheet'
  get 'all_income'=>'income#index'
  get 'new_income' => 'income#new'
  post 'new_income' => 'income#new'
  get'income_by_month'=>'income#income_by_month'
  get 'monthly_income/:id'=>'income#monthly'
  
  get 'incomes/:id'=>'income#show'
  patch 'incomes/:id'=>'income#update'
  delete 'incomes/:id'=>'income#destroy'

  get 'new_expenses' => 'transaction#new'
  post'new_expenses'=> 'transaction#new'
  get 'monthly/:id'=>'transaction#monthly_transac'
  get 'transaction_type'=>'transaction#transaction_by_type'
  get 'category/:id'=>'transaction#category_transac'
  get 'all_expense'=>'transaction#index'
  get 'expenses/:id'=>'transaction#show'
  patch 'expenses/:id'=>'transaction#update'
  delete 'expenses/:id'=>'transaction#destroy'

  root 'static_pages#home'  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
