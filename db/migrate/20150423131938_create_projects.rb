class CreateProjects < ActiveRecord::Migration
  def up
    create_table :projects do |t|
      t.string :title
      t.text :text
      t.string :url
      t.text :key_feature
      t.integer :category_id

      t.timestamps null: false
    end
  end

  def down
    drop_table 'projects'
  end
end
