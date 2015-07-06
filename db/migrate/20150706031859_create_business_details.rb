class CreateBusinessDetails < ActiveRecord::Migration
  def change
    create_table :business_details do |t|
      t.text :description
      t.string :website
      t.string :phone
      t.string :email
      t.string :facebook
      t.string :twitter
      t.integer :business_id

      t.timestamps null: false
    end
  end
end
