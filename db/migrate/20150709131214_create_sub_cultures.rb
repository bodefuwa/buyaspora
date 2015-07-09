class CreateSubCultures < ActiveRecord::Migration
  def change
    create_table :sub_cultures do |t|
      t.references :culture, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
