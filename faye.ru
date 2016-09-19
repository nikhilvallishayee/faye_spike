
require 'faye'
Faye::WebSocket.load_adapter('thin')
Faye.logger = Logger.new(STDOUT)

$bayeux = Faye::RackAdapter.new(:mount => '/faye', :timeout => 25)

$bayeux.on(:handshake) do |client_id|
  p 123
end

run $bayeux