class RecipeCLI::API
  
  def self.get_recipes(input)
    @recipes_hash = HTTParty.get("https://api.edamam.com/search?q=#{input}&app_id=318bbc88&app_key=e84898d62cbc82611ffb3506ea2d2aa7")
    
    if (@recipes_hash["Error"])
      puts "Cannot find that recipe, try again.."
      
    else
      recipe_obj = {
        mealtype: = @recipes_hash["Mealtype"],
        ingr: = @recipes_hash["Ingr"]
        time: = @recipes_hash["Time"]
      }
    RecipeCLI::Recipes.new(recipe_obj)
  end
  
end