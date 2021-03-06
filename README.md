# zutat

zutat is a small Ruby gem which allows you to simply get and work with recipes from diy.soylent.me. It is is dead-simple and you can easily get Soylent recipes for your project.

FYI: "zutat" is German and means ingredient.

## Installation
Just install the gem from RubyGems.
```
gem install zutat
```

## Usage
At first, you should require the gem. Otherwise it won't work.
```ruby
require 'zutat'
```
### Initialize a client
Then you must initialize a new client.
```ruby
client = Zutat::Client.new
```

### Fetch a recipe
At this point, you can get a recipe by its ID. If I want the "People Chow 3.0.1" recipe, I type:
```ruby
recipe = client.get_recipe "people-chow-301-tortilla-perfection"
```

### Using the recipe object
If I want to know, how many calories are specified as nutrient target I simply use:
```ruby
puts recipe.nutrient_targets.calories
```

Or when I want to know the source (to buy) for each ingredient in this recipe:
```ruby
recipe.ingredients.each do |ingredient|
  puts ingredient.source
end
```

## TODO
* Adding index with all objects
* Adding search feature
* Optimizing attributes from Zutat::Ingredients and Zutat::NutrientTargets

## Support
If you like my work, you can support me via Gratipay, Flattr or a Bitcoin donation:

<a href="https://www.gittip.com/EddyShure/">
  <img alt="Support via Gittip" src="https://rawgithub.com/twolfson/gittip-badge/0.2.0/dist/gittip.png"/>
</a>

[![Flattr this git repo](http://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=EddyShure&url=https://github.com/EddyShure/zutat&title=zutat&language=Ruby&tags=github&category=software)

```
1n5cZr1h3kVxt9gChCBueb1J5feL8RgZZ
```
