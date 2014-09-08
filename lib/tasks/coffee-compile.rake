require 'coffee-script'

namespace :coffee_js do
  desc "compile coffee-scripts from app/assets/javascripts to ./public/javascripts"
  task :compile do
    source = "#{Rails.root}/app/assets/javascripts/"
    javascripts = "#{Rails.root}/public/javascripts/"

    Dir.foreach(source) do |cf|
      if(File.extname(cf) == ".coffee")
        js = CoffeeScript.compile File.read("#{source}#{cf}")
        open "#{javascripts}#{cf.gsub('.coffee', '')}", 'w' do |f|
          f.puts js
        end
      end
    end
  end
end
