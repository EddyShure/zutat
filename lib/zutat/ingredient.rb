module Zutat
  class Ingredient
    attr_accessor :_id, :amount, :biotin, :calcium, :calories, :carbs, :chloride, :cholesterol,
      :choline, :chromium, :container_size, :copper, :fat, :fiber, :folate, :form, :insoluble_fiber,
      :iodine, :iron, :item_cost, :maganese, :magnesium, :molybdenum, :monounsaturated_fat, :name,
      :niacin, :omega_3, :omega_6, :panthothenic, :persistedAsin, :phosphorus, :polyunsaturated_fat, 
      :potassium, :protein, :riboflavin, :saturated_fat, :selinium, :serving, :sodium, :soluble_fiber, 
      :source, :sulfur, :thiamin, :unit, :url, :vitamin_a, :vitamin_b12, :vitamin_b6, :vitamin_c, 
      :vitamin_d, :vitamin_e, :vitamin_k, :zinc, :currency, :asin, :volumeStr, :id

    def initialize(igrdnts)
      igrdnts.each do |k,v|
        m = k.gsub('-', '_')
        send("#{m}=",v)
      
        if v.is_a? String and v.empty?
          send("#{m}=",nil)
        end

      end
    end
  end
end
