class CreateTableImagesPosts < ActiveRecord::Migration
  def up
    create_table 'images_posts' do |t|
      t.integer :image_id
      t.integer :post_id
    end
  end

  def down
    drop_table 'images_posts'
  end
end
