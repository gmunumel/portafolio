class Category < ActiveRecord::Base
  belongs_to :project, :inverse_of => :category

end
