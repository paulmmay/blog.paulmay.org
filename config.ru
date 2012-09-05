require "rack/jekyll"
require "rack/rewrite"
use Rack::Rewrite do
end
run Rack::Jekyll.new
