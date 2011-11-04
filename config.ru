require "rack/jekyll"
require "rack/rewrite"
use Rack::Rewrite do
  rewrite '/feed/index.xml', '/feed'
end

run Rack::Jekyll.new