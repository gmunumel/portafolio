class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :text
      t.string :url
      t.string :key_feature
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
