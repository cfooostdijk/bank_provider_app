FactoryBot.define do
  factory :supplier do
    name { "Supplier Name" }
    nit { "901362343-4" }
    contact_name { "Contact Person" }
    contact_phone { "1234567890" }
    account_number { "1234567890" }
    association :bank, factory: :bank
  end
end
