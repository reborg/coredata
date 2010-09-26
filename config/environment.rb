framework 'coredata'
APP_ROOT = File.expand_path(File.dirname(__FILE__) + "/..")
$LOAD_PATH << APP_ROOT + "/lib/"

# Get vendor libs into the loadpath:
[ "bacon/lib", "mocha/lib", "mocha-on-bacon/lib" ].each do |path|
  $LOAD_PATH << APP_ROOT + "/vendor/" + path
end
