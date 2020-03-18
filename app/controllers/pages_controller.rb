class PagesController < ApplicationController
  def index
    @random_number = rand(0..10_000)
  end
end
