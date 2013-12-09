###
# Compass
###

# Change Compass configuration
# compass_config do |config|
   config.output_style = :compressed
# end

# require 'toolkit'
require 'color-schemer'
require 'modular-scale'


###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout


# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

activate :directory_indexes

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end


# Assumes the file source/about/template.html.erb exists
# ["autotax", "Waves of Change"].each do |name|
#   proxy "/projects/#{name}.html", "/projects/template.html"}
# end

["autotax", "waves-of-change"].each do |name|
  proxy "/projects/#{name}.html", "/projects/template.html", :locals => { :project_name => name }, :ignore => true
end
