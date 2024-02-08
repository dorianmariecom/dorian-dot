# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-dot"
  s.version = "0.3.0"
  s.summary = "Links dot files e.g. `dot ~/src/dotfiles`"
  s.description = "#{s.summary}\n\nUSAGE: dot DIRECTORY"
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.fr"
  s.files = ["bin/dot"]
  s.executables << "dot"
  s.homepage = "https://github.com/dorianmariefr/dorian-dot"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
end
