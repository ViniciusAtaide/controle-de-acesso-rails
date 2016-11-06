class Visitor < ActiveRecord::Base
  scope :like, -> (q) { where 'nome LIKE ?', "#{q}%" }  
  
  has_many :history

  validates_presence_of :avatar, :nome
end