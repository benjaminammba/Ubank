class Nametomonth < ActiveRecord::Migration[5.1]
  def change
    
     add_column :months,:name,:string
  end
end
