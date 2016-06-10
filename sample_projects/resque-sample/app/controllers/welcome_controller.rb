class WelcomeController < ApplicationController
  def home
    Resque.enqueue(Sleep, 10)
  end
end