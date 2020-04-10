class RecipeCLI::API
  
  def self.get_recipes(input)
    @recipes_hash = HTTParty.get("https://api.edamam.com/search?q=#{input}&app_id=318bbc88&app_key=e84898d62cbc82611ffb3506ea2d2aa7&from=0&to=3&calories=591-722&health=alcohol-free")
    
    if (@recipes_hash["Error"])
      puts "Cannot find that recipe, try again.."
      
    else
      recipe_obj = {
        hits: [{
          recipe: {
            label => ["name"],
            ingredientLines: @recipes_hash["Ingredients"]
            }
        }]
      }
      binding.pry
    RecipeCLI::Recipes.new(recipe_obj)
    end
  end
  
end