class Supplier < ApplicationRecord
  paginates_per 10

  belongs_to :bank

  validates :nit, format: { with: /\A([0-9]{9}-[0-9]{1})?\z/ }, allow_blank: false
  validates :contact_phone, length: { maximum: 10 }, allow_blank: true
  validates :account_number, length: { maximum: 15 }, allow_blank: true

  validates_presence_of :name, :contact_name, :nit, :bank_id

  def bank_name
    Bank.find(self.bank_id).name
  end
end
