class AddSubCategoryToBusinesses < ActiveRecord::Migration
  def change
  	add_column :businesses, :category_id, :integer
    add_index :businesses, :category_id
  end
end
