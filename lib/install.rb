require 'fileutils'
puts "Beginning instalation..."
FileUtils.cp(File.expand_path('chromedriver', File.dirname(__FILE__)), '/usr/local/bin/chromedriver')
puts "Install done!"

