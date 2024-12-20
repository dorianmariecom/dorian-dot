# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-dot"
  s.version = File.read("VERSION").strip
  s.summary = "links dot files"
  s.description = s.summary
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/dot"]
  s.executables << "dot"
  s.homepage = "https://github.com/dorianmariecom/dorian-dot"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "dorian-arguments"
  s.add_dependency "git"
  s.required_ruby_version = ">= 3.1"
end
