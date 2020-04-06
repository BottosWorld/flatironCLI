class RecipeCLI::CLI
  
  #Give comments of description
  #Start should greet user and give description
  
  #What are we trying to do with our application?
  #Get data from api/scraper
  #create new custom objects
  #all within start of app
  
  def start
    puts "Hello there!"
    puts "Getting Data from API... Please Wait"
    puts "Loading Objects.."
    puts "Please enter what kind of recipe you're looking for:"
    input = gets.strip.downcase
    if (input != "quit")
      @data = RecipeCLI::API.get_recipes(input)
      @objects = RecipeCLI::Recipes.all
      #instance method below
      display
    else
      #quit instance method
      quit
    end
    #binding.pry
  end
  
  def display
    @objects.each.with_index(1) {|recipes, index| puts "#{index}. #{recipes.mealtype}"}
    puts "Please make a selection"
    #the above works, and so does the quit instance below. now I need to put together a list for the selection
    #input = gets.strip.downcase
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