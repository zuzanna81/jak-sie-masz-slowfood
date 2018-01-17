require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to belong_to :restaurant }
    it { is_expected.to belong_to :product_category }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :price }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :price}
  end

  describe 'Factory' do
    it 'should be valid' do
      expect(FactoryBot.create(:product)).to be_valid
    end
  end
end
