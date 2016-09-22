class HomeController < ApplicationController
  def index
    @push = Push.last
  end
end
