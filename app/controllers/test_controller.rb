class TestController < ApplicationController

  def jeff
    # uncommenting binding.pry will freeze code execution and give you an interactive command line in your rails server
    # binding.pry
    @text = "hello"
  end
end
