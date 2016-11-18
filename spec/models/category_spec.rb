require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { Category.new(name: 'Appetizers') }

  describe '#category_attributes' do
    context '.name' do
      it 'returns name of category as a string' do
        expect(category.name).to eq('Appetizers')
      end
    end
  end
end
