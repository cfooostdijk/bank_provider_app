require 'rails_helper'

RSpec.describe Supplier, type: :model do
  describe 'validations' do
    subject { build(:supplier) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:contact_name) }
    it { should validate_presence_of(:nit) }

    it { should validate_length_of(:contact_phone).is_at_most(10).allow_nil }
    it { should validate_length_of(:account_number).is_at_most(15).allow_nil }

    context 'with valid NIT format' do
      let(:valid_nit) { '901362343-4' }

      it 'is expected to be valid' do
        subject.nit = valid_nit
        expect(subject).to be_valid
      end
    end

    context 'with invalid NIT format' do
      let(:invalid_nit) { '123456789' }

      it 'is expected not to be valid' do
        subject.nit = invalid_nit
        expect(subject).not_to be_valid
      end
    end

    context 'when contact_phone is present' do
      it 'validates the maximum length' do
        subject.contact_phone = '1234567890'
        expect(subject).to be_valid
      end
    end

    context 'when account_number is present' do
      it 'validates the maximum length' do
        subject.account_number = '123456789012345'
        expect(subject).to be_valid
      end
    end

    context 'when contact_phone is blank' do
      it 'is expected to be valid' do
        subject.contact_phone = nil
        expect(subject).to be_valid
      end
    end

    context 'when account_number is blank' do
      it 'is expected to be valid' do
        subject.account_number = nil
        expect(subject).to be_valid
      end
    end
  end
end
