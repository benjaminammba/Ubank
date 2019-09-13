class CategoryIdToTransaction < ActiveRecord::Migration[5.1]
  def change
      add_column:transactions,:category_id,:integer
     add_index:transactions,:category_id
  end
end
