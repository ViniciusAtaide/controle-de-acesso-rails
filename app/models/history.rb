class History < ActiveRecord::Base
	has_one :gabinete
	belongs_to :visitor
end
