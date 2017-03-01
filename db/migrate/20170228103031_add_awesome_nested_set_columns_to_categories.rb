class AddAwesomeNestedSetColumnsToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :parent_id, :integer
    add_column :categories, :lft, :integer
    add_column :categories, :rgt, :integer
    
    add_index :categories, :parent_id
    add_index :categories, :lft
    add_index :categories, :rgt
  end
end
