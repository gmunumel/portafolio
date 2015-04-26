class CreateTableImagesProjects < ActiveRecord::Migration
  def up
    create_table 'images_projects' do |t|
      t.integer :image_id
      t.integer :project_id
    end
  end

  def down
    drop_table 'images_projects'
  end
end
