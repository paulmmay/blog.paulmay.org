class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.integer :parent_id
      t.integer :sort_order

      t.timestamps
    end
  end
end
