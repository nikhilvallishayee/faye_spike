require 'eventmachine'

require 'net/http'

require 'json'

class PushController < ApplicationController

  def create
    hash = JSON.parse(params[:hash])
    @push = Push.new()
    @push.env = hash["ENV"]
    @push.test_type = hash["TYPE"]
    @push.generated_time = hash["Generated-Time"]
    @push.result = hash["result"]
    @push.save!
    render :nothing => true, :status => 201
  end
end
