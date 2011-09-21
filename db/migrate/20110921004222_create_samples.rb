class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :title
      t.text :body
      t.integer :category_id

      t.timestamps
    end
  end
end
