class HomeController < ApplicationController
  def index
    @push = Push.last
  end

  def dashboard1
  end

  def dashboard2
  end
end
