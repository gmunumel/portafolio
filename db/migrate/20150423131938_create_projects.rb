class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :text
      t.string :url
      t.string :key_feature
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
