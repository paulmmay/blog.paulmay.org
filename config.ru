require "rack/jekyll"
require "rack/rewrite"

use Rack::Rewrite do
  rewrite '/feed/', '/feed/index.xml'
end
run Rack::Jekyll.new