require 'eventmachine'
class PushController < ApplicationController

  def create


    EM.run {
      client = Faye::Client.new('http://localhost:9292/faye')



      client.publish('/email', 'message' => params[:message])
    }

    render :nothing => true, :status => 201
  end
end
