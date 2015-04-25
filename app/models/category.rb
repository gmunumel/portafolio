class Category < ActiveRecord::Base
  has_one :project, :dependent => :destroy, :inverse_of => :category

  attr_accessible :title

end
