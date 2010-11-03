# vim:ft=ruby:fileencoding=utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "kronn-has_many_polymorphs"
  s.version     = "3.0.3"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Evan Weaver", "James Stewart", "Matthias Viehweger"]
  s.homepage    = "http://github.com/kronn/has_many_polymorphs"
  s.summary     = "An ActiveRecord plugin for self-referential and double-sided polymorphic associations."

  s.add_dependency "activerecord"
  s.required_rubygems_version = ">= 1.3.6"

  s.files        = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README CHANGELOG)
  s.require_path = 'lib'
end
