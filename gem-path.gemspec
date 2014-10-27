# -*- encoding: utf-8 -*-
# stub: gem-path 0.6.1 ruby lib

Gem::Specification.new do |s|
  s.name = "gem-path"
  s.version = "0.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Lin Jen-Shin (godfat)"]
  s.date = "2014-10-27"
  s.description = "Find the path for a given gem or require path for editing or greping.\n\nFor examples, under [fish](http://fishshell.com/):\n\n    cd (gem path gem-path)\n    vim (gem path gem-path)\n    grep require -R (gem path gem-path)\n\nOr checkout [gem-eit][], [gem-grep][] for shorthands.\n\n[gem-eit]: https://github.com/godfat/gem-eit\n[gem-grep]: https://github.com/godfat/gem-grep"
  s.email = ["godfat (XD) godfat.org"]
  s.files = [
  ".gitignore",
  ".gitmodules",
  ".travis.yml",
  "CHANGES.md",
  "LICENSE",
  "README.md",
  "Rakefile",
  "gem-path.gemspec",
  "lib/rubygems/commands/path_command.rb",
  "lib/rubygems_plugin.rb",
  "task/README.md",
  "task/gemgem.rb",
  "test/test.rb"]
  s.homepage = "https://github.com/godfat/gem-path"
  s.licenses = ["Apache License 2.0"]
  s.rubygems_version = "2.4.2"
  s.summary = "Find the path for a given gem or require path for editing or greping."
end
