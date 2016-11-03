class Visitor < ActiveRecord::Base
  scope :like, -> (q) { where 'nome LIKE ?', "#{q}%" }  
  before_save :default_values
  def default_values
		self.in_building = true
  end
end