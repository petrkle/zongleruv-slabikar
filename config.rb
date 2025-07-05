set :css_dir, 'css'

set :images_dir, 'img'

set :markdown_engine, :kramdown
set :markdown, :transliterated_header_ids => true

configure :development do
  config[:host] = "zongl.info"
  activate :directory_indexes
  activate :asset_hash, :exts => %w(.css .js .json .png .svg .jpg .pdf .zip .gif .mobi .odt)
  activate :livereload, :host => '127.0.0.1'
end

configure :production do
  config[:host] = "zonglovani.info"
  activate :directory_indexes
  activate :minify_html
  activate :minify_css
  activate :gzip
  activate :brotli
  activate :asset_hash, :exts => %w(.css .js .json .png .svg .jpg .pdf .zip .gif .mobi .odt)
end


page "/micky/*/*", layout: :clanky
page "/kuzely/*/*", layout: :clanky
page "/kruhy/*/*", layout: :clanky
page "/diabolo/*", layout: :clanky
