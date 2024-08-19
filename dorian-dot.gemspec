# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-dot"
  s.version = "0.7.3"
  s.summary = "links dot files"
  s.description = s.summary
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/dot"]
  s.executables << "dot"
  s.homepage = "https://github.com/dorianmariecom/dorian-dot"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "git"
  s.add_dependency "dorian-arguments"
end
