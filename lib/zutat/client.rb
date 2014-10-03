module Zutat
  class Client
    URL = "https://diy.soylent.me/recipes/"

    def get_recipe(id)
      if not id.is_a? String
        raise "invalid recipe id."
      end

      @url = URI((URL + id + "/json"))
      @res = Net::HTTP.get(@url)

      return Zutat::Recipe.new(@res)
    end
  end
end
