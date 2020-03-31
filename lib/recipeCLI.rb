# environment file
# this loads all files needed to run our app.

require "recipeCLI/version"
require "recipeCLI/cli"

#dependencies
require "pry"

module RecipeCLI
  class Error < StandardError; end
  # Your code goes here...
end
