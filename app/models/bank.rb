class Bank < ApplicationRecord
  has_many :suppliers

  validates :name, length: { maximum: 50 }
  validates_presence_of :name
end
