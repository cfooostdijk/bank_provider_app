require 'faker'

banks = 15.times.map { Bank.create(name: Faker::Bank.name) }

bank_ids = Bank.pluck(:id)
30.times do
  Supplier.create(
    name: Faker::Company.name,
    nit: "901362343-4",
    contact_name: Faker::Name.name,
    contact_phone: Faker::PhoneNumber.unique.cell_phone[0..9],
    account_number: Faker::Number.unique.number(digits: 15).to_s,
    bank_id: Bank.pluck(:id).sample
  )
end
