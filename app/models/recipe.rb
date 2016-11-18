class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :ratings
  has_many :quantities
  has_many :ingredients, through: :quantities

  accepts_nested_attributes_for :quantities

  validates :name, :description, :instructions,
            :user_id, :category_id, { presence: true }

  validates :difficulty_level, numericality: { greater_than_or_equal_to: 1,
                                               less_than_or_equal_to: 5}

  validates :prep_time, numericality: { greater_than_or_equal_to: 1 }


  def rating_average
    sum = self.ratings.reduce(0) { |sum, rating| sum + rating.rating }
    avg = sum / self.ratings.count.to_f
    avg.round(1)
  end

  def display_directions
    self.instructions.gsub(/\s*([.;\r\n]+|\s\s)\s*/, ".<br><br>")
  end 


end
