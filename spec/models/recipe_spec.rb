require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:recipe) { Recipe.create(name: 'Pizza', 
                            description: 'Best pizza in the world!',
                            instructions: 'Dough it! Roll it! Knead it! Bake it!',
                            prep_time: '40',
                            difficulty_level: '3',
                            user_id: 1,
                            category_id: 1) }

  describe '#recipe_attributes' do
    context '.name' do
      it 'returns name of recipe as a string' do 
        expect(recipe.name).to eq('Pizza')
      end
    end

    context '.description' do
      it 'returns description of recipe as a string' do 
        expect(recipe.description).to eq('Best pizza in the world!')
      end
    end

    context '.instructions' do
      it 'returns instructions of recipe as a string' do 
        expect(recipe.instructions).to eq('Dough it! Roll it! Knead it! Bake it!')
      end
    end

    context '.prep_time' do
      it 'returns preparation time of recipe as an integer' do 
        expect(recipe.prep_time).to eq(40)
      end
    end

    context '.difficulty_level' do
      it 'returns difficulty level of recipe as an integer' do 
        expect(recipe.difficulty_level).to eq(3)
      end
    end
  end
end
