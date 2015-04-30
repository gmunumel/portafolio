class Image < ActiveRecord::Base

  has_and_belongs_to_many :projects
  has_and_belongs_to_many :posts

  attr_accessible :asset, :project_ids, :post_ids

  has_attached_file :asset,
                    :storage => :dropbox,
                    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
                    :styles => {
                        :thumb => "100x100#",
                        :small  => "150x150>",
                        :medium => "200x200" }
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
  # add a delete_<asset_name> method:
  attr_accessor :delete_asset
  before_validation { self.asset.clear if self.delete_asset == '1' }

end
