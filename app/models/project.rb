class Project < ActiveRecord::Base
  has_one :category, :dependent => :destroy, :inverse_of => :project

  def category_id
    self.category.try :id
  end
  def category_id=(id)
    self.category = Category.find_by_id(id)
  end

end
