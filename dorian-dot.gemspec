# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-dot"
  s.version = "0.4.1"
  s.summary = "Links dot files e.g. `dot ~/src/dotfiles`"
  s.description = "#{s.summary}\n\nUSAGE: dot DIRECTORY"
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/dot"]
  s.executables << "dot"
  s.homepage = "https://github.com/dorianmariecom/dorian-dot"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "git", "~> 1"
end
