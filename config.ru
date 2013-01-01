require 'rack/contrib/try_static'
require 'rack/rewrite'

use Rack::TryStatic,
    :root => "_site",
    :urls => %w[/],
    :try => ['.html', 'index.html', '/index.html']
    
use Rack::Rewrite do
r301 '/articles/emma-davis' 'http://paulmay.org/articles/Emma_Davis_Finishes_37th_in_Beijing'
r301 '/articles/emma-davis-finishes-37th' 'http://paulmay.org/articles/Emma_Davis_Finishes_37th_in_Beijing'
r301 '/itp/design-for-unicef-cell-phone-and-a-radio/' 'http://paulmay.org/itp/unicef-phone-radio/'
r301 '/homework' 'http://paulmay.org/blog'
r301 '/homework/' 'http://paulmay.org/blog/'
r301 '/itp/' 'http://paulmay.org/blog/'
r301 '/itp' 'http://paulmay.org/blog'
r301 '/articles' 'http://paulmay.org/blog'
r301 '/articles/' 'http://paulmay.org/blog/'
r301 '/blog/shaking-of-the-rust-data-representation/' 'http://paulmay.org/blog/shaking-off-the-rust-data-representation/'
r301 '/blog/shaking-of-the-rust-data-representation' 'http://paulmay.org/blog/shaking-off-the-rust-data-representation/'
r301 '/hello' '/blog/itp-winter-show-2011/'
r301 '/blog/tedx/' 'http://paulmay.org/blog/tedx-data-representation-and-personal-narratives/'
r301 '/blog/tedx' 'http://paulmay.org/blog/tedx-data-representation-and-personal-narratives/'
r301 '/blog/charles-leadbetter-perspective' 'http://paulmay.org/blog/charles-leadbeater-perspective/'
r301 '/thesis/paulmay-thesis.zip' 'https://dl.dropbox.com/u/1299449/paulmay-thesis.zip'
end

run lambda { [404, {'Content-Type' => 'text/html'}, ['Not Found']]}
