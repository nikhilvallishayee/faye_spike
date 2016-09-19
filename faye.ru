
require 'faye'
Faye::WebSocket.load_adapter('thin')
$bayeux = Faye::RackAdapter.new(:mount => '/faye', :timeout => 25)
logger = Logger.new(STDOUT)
logger.level = Logger::INFO
Faye.logger = logger

run $bayeux