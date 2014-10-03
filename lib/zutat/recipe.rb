module Zutat
  class Recipe
    attr_accessor :ingredients, :nutrient_targets

    def initialize(p)
      @json = JSON.parse(p)
      
      @json["ingredients"].each do |n|
        @ingredients << Zutat::Ingredient.new(n)
      end
      @nutrient_targets = nil
    end
  end
end
