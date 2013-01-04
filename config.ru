require 'rack/contrib/try_static'
require 'rack-rewrite'

use Rack::Rewrite do
r301 '/articles/emma-davis', '/blog/Emma_Davis_Finishes_37th_in_Beijing/'
r301 '/articles/emma-davis-finishes-37th', '/blog/Emma_Davis_Finishes_37th_in_Beijing/'
r301 '/itp/design-for-unicef-cell-phone-and-a-radio/', '/blog/unicef-phone-radio/'
r301 '/blog/A_Beginners_Guide_to_Triathlon/', '/blog/a-beginners-guide-to-triathlon/'
r301 %r{/homework(.*)}, '/blog$1'
r301 %r{/itp(.*)}, '/blog$1'
r301 %r{/articles(.*)}, '/blog$1'
r301 %r{/tags(.*)}, '/blog'
r301 %r{/contact/(.*)}, '/contact/'
r301 '/blog/shaking-of-the-rust-data-representation/', '/blog/shaking-off-the-rust-data-representation/'
r301 '/blog/shaking-of-the-rust-data-representation', '/blog/shaking-off-the-rust-data-representation/'
r301 '/hello', '/work/'
r301 '/blog/tedx/', '/work/tedx/'
r301 '/blog/tedx', '/work/tedx/'
r301 '/blog/charles-leadbetter-perspective', '/blog/charles-leadbeater-perspective/'
r301 '/thesis/paulmay-thesis.zip', 'https:/dl.dropbox.com/u/1299449/paulmay-thesis.zip'
r301 %r{.*}, 'http://www.paulmay.org$&', :if => Proc.new {|rack_env|rack_env['SERVER_NAME'] == 'paulmay.org'}
r301 %r{.*}, 'http://www.paulmay.org$&', :if => Proc.new {|rack_env|rack_env['SERVER_NAME'] == 'new.paulmay.org'}
end

use Rack::TryStatic,
    :root => "_site",
    :urls => %w[/],
    :try => ['.html', 'index.html', '/index.html']


run lambda { [404, {'Content-Type' => 'text/html'}, ['Not Found']]}