require 'eventmachine'

require 'net/http'

class PushController < ApplicationController

  def create

    message = {:channel => '/foo', :data => {:text => "foo"} }
    uri = URI.parse("http://localhost:9292/faye")
    Net::HTTP.post_form(uri, :message => message.to_json)
    render :nothing => true, :status => 201
  end
end
