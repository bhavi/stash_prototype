# makes monkeypatches in lib/ext automatically work with reloading changes in rails development
# http://stackoverflow.com/questions/4460800/how-to-monkey-patch-code-that-gets-auto-loaded-in-rails

Dir[Rails.root.join('lib/ext/*.rb')].each { |file| require file }