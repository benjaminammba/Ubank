class AddUserIdTransaction < ActiveRecord::Migration[5.1]
  def change
    
     add_column:transactions,:user_id,:integer
      add_index:transactions,:user_id
  end
end
