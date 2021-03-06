# Boot the framework. Similar to Rails' `config/boot.rb`.

# Activate Bundler. Set up gems listed in the Gemfile.
require 'bundler/setup' 
# it will require all ges which you define in the gemfile
# load the Gemfile and add all gems which define in gemfile to the $LOAD_PATH

# Add our framework code (lib/) to the load path.
$LOAD_PATH.unshift "lib"

# Add the current directory to load path too so we can `require 'config/routes'` for example.
$LOAD_PATH.unshift "."

# Add all directories of app/ to the load path.
Dir["app/*"].each do |path|
  $LOAD_PATH << path
end
