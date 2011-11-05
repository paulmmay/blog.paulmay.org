require "rack/jekyll"
require "rack/rewrite"

use Rack::Rewrite do
  rewrite '/feed/', '/feed/index.xml'
  rewrite '/feed/', '/itp/feed/'
end
run Rack::Jekyll.new