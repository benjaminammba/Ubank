class AddElementToIncome < ActiveRecord::Migration[5.1]
  def change
      add_column :incomes ,:amount, :integer
      add_column :incomes ,:month , :string
      add_column :incomes,:description,:string
  end
end
