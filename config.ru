require 'rack/contrib/try_static'
require 'rack-rewrite'

use Rack::Rewrite do
r301 '/articles/emma-davis', '/blog/Emma_Davis_Finishes_37th_in_Beijing/'
r301 '/articles/emma-davis-finishes-37th', '/blog/Emma_Davis_Finishes_37th_in_Beijing/'
r301 '/itp/design-for-unicef-cell-phone-and-a-radio/', '/blog/unicef-phone-radio/'
r301 '/homework', '/blog/'
r301 '/homework/', '/blog/'
r301 '/itp/', '/blog/'
r301 '/itp', '/blog/'
r301 '/articles', '/blog/'
r301 '/articles/', '/blog/'
r301 '/blog/shaking-of-the-rust-data-representation/', '/blog/shaking-off-the-rust-data-representation/'
r301 '/blog/shaking-of-the-rust-data-representation', '/blog/shaking-off-the-rust-data-representation/'
r301 '/hello', '/blog/itp-winter-show-2011/'
r301 '/blog/tedx/', '/work/tedx/'
r301 '/blog/tedx', '/work/tedx/'
r301 '/blog/charles-leadbetter-perspective', '/blog/charles-leadbeater-perspective/'
r301 '/thesis/paulmay-thesis.zip', 'https:/dl.dropbox.com/u/1299449/paulmay-thesis.zip'
end

use Rack::TryStatic,
    :root => "_site",
    :urls => %w[/],
    :try => ['.html', 'index.html', '/index.html']


run lambda { [404, {'Content-Type' => 'text/html'}, ['Not Found']]}