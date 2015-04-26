class Project < ActiveRecord::Base
  belongs_to :category, inverse_of: :project
  has_many :image, dependent: :destroy, inverse_of: :project

  attr_accessible :title, :text, :url,
                  :key_feature, :category_id


end
