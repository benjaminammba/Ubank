class MonthIdTrans < ActiveRecord::Migration[5.1]
  def change
     add_column:transactions,:month_id,:integer
     add_index:transactions,:month_id
  end
end
