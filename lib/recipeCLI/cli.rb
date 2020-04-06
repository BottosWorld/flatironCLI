class RecipeCLI::CLI
  
  def start
    puts "Hello there!"
    puts "Please enter what kind of recipe you're looking for:"
    input = gets.strip.downcase
    if (input != "quit")
      @data = RecipeCLI::API.get_recipes(input)
      @objects = RecipeCLI::Recipes.all
      display
    else
      quit
    end
  end
  
  def display
    puts "Here is a list of recipes that you're looking for:"
    puts "--------------------------------------------------"
    @objects.each.with_index(1) {|recipes, index| puts "#{index}. #{recipes.mealType}"}
    puts "Please select a recipe that you would like more information from."
    input = gets.strip.downcase
    if(input.to_i > 0)
      @recipes = @objects[input.to_i - 1]
      puts "#{@recipes.ingr}"
      display
    elsif (input == "quit")
      quit
    elsif (input == "menu")
      start
    else 
      puts "try again"
      display
    end 
    #I cannot seem to find a way for my API to bring in data to show a list, its just empty.
  end
    
    
    
  def quit
    puts "Thank you, come again!"
  end
  
end


  #BULK OF OUR CODE:
    #deal with inputs (loop that keeps asking for new info)
    #ex -> while input does not equal "EXIT" do 
    
    #display a list of options for users to select
    #get user input
    #do something depending on input
    #if condition to check if input is valid
    #else condition to tell user "try again"
  
  #exit command
  #if input == "EXIT"
  #kill program, say "goodbye"