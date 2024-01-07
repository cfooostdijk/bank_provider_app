require 'rails_helper'

RSpec.describe Bank, type: :model do
	let(:name) { 'Example Bank' }
	subject(:bank) { build :bank, name: name }

	describe 'validations' do
	  it { is_expected.to validate_presence_of(:name) }

	  context 'with a valid name' do
	    it { is_expected.to be_valid }
	  end

	  context 'with an invalid name exceeding the maximum length' do
	    let(:name) { 'A' * 51 }

	    it { is_expected.not_to be_valid }
	  end
	end
end
