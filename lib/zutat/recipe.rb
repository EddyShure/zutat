module Zutat
  class Recipe
    attr_accessor :ingredients, :nutrient_targets

    def initialize(p)
      @json = JSON.parse(p)
      @ingredients = Array.new

      @json["ingredients"].each do |n|
        ingredient = Zutat::Ingredient.new(n)
        p ingredient
        @ingredients << ingredient
      end
      @nutrient_targets = nil
    end
  end
end
