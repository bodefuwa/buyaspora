class AddCategoryToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :sub_category_id, :integer
    add_index :businesses, :sub_category_id
  end
end
