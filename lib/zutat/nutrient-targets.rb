module Zutat
  module NutrientTargets
    attr_accessor :zinc_max, :zinc, :vitamin_k_max, :vitamin_k, :vitamin_e_max, :vitamin_e, :vitamin_d_max, 
      :vitamin_d, :vitamin_c_max, :vitamin_c, :vitamin_b6_max, :vitamin_b6, :vitamin_b12_max, :vitamin_b12,
      :vitamin_a_max, :vitamin_a, :thiamin_max, :thiamin, :sulfur_max, :sulfur, :sodium_max, :sodium, :selinium_max
      :selinium, :riboflavin_max, :riboflavin, :protein_max, :protein, :potassium_max, :potassium, :phosphorus_max,
      :phosphorus, :panthothenic_max, :panthothenic, :omega_6_max, :omega_6, :omega_3_max, :omega_3, :niacin_max, 
      :niacin, :name, :molybdenum_max, :molybdenum, :magnesium_max, :magnesium, :maganese_max, :maganese, :iron_max,
      :iron, :iodine_max, :iodine, :folate_max, :folate, :fiber_max, :fiber, :fat_max, :fat, :copper_max, :copper, 
      :chromium_max, :chromium, :choline_max, :choline, :cholesterol_max, :cholesterol, :chloride_max, :chloride,
      :carbs_max, :carbs, :calories_max, :calories, :calcium_max, :calcium, :biotin_max, :biotin

    def initialize(nt)
      nt.each do |k,v|
        send("#{k}=",v)
      end
    end
  end
end
