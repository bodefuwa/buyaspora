class AddNameToSubCultures < ActiveRecord::Migration
  def change
    add_column :sub_cultures, :name, :string
  end
end
