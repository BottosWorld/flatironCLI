# environment file
# this loads all files needed to run our app.

require "recipeCLI/version"
require "recipeCLI/cli"
require "recipeCLI/api"
require "recipeCLI/recipes"

#dependencies
require "pry"
require "httparty"

module RecipeCLI
  class Error < StandardError; end
  # Your code goes here...
end
