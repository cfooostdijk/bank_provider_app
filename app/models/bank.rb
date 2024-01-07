class Bank < ApplicationRecord
	validates :name, length: { maximum: 50 }
	validates_presence_of :name
end
