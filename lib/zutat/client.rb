module Zutat
  class Client
    URL = "https://diy.soylent.me/recipes/"

    def get_recipe(id)
      raise "invalid recipe id." unless id.is_a? String

      @url = URI((URL + id + "/json"))
      @res = Net::HTTP.get(@url)
      
      if @res["error"]
        raise "[zutat] Recipe not found."
      else
        return Zutat::Recipe.new(@res)
      end
    end
  end
end
