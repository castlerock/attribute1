
lib, version = File::basename(File::dirname(File::expand_path(__FILE__))).split %r/-/, 2

require 'rubygems'

Gem::Specification::new do |spec|
  $VERBOSE = nil
  lib = 'attributes'
  spec.name = 'attributes1' 
  spec.version = version 
  spec.platform = Gem::Platform::RUBY
  spec.summary = lib 

  spec.files = Dir::glob "**/**"
  spec.executables = Dir::glob("bin/*").map{|exe| File::basename exe}
  
  spec.require_path = "lib" 
  spec.autorequire = lib

  spec.has_rdoc = File::exist? "doc" 
  spec.test_suite_file = "test/#{ lib }.rb" if File::directory? "test"
  #spec.add_dependency 'pervasives', '>= 1.0'

  spec.extensions << "extconf.rb" if File::exists? "extconf.rb"

  spec.author = "Mitesh Jain"
  spec.email = "mitijain123@gmail.com"
end
