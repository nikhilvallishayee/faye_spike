require 'eventmachine'

require 'net/http'

require 'json'

class PushController < ApplicationController

  def create
    result = JSON.parse(params[:hash])
    @push = Push.new()
    @push.generated_time = params["generated_time"]
    @push.result = result
    @push.save!
    render :nothing => true, :status => 201
  end
end
