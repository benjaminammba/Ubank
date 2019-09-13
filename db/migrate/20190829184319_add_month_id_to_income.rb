class AddMonthIdToIncome < ActiveRecord::Migration[5.1]
  def change
      add_column:incomes,:month_id,:integer
      add_index:incomes,:month_id
  end
end
