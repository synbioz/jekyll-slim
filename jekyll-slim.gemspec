# -*- encoding: utf-8 -*-
# stub: jekyll-slim 0.10.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-slim".freeze
  s.version = "0.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Reda Lemeden".freeze, "Francesco Belladonna".freeze, "Daniel Menlder".freeze]
  s.date = "2017-01-26"
  s.description = "Slim html converter for Jekyll".freeze
  s.email = ["reda@thoughtbot.com".freeze, "francesco.belladonna@gmail.com".freeze, "mail@daniel-mendler.de".freeze]
  s.files = [".gitignore".freeze, ".rspec".freeze, ".ruby-version".freeze, ".travis.yml".freeze, "Gemfile".freeze, "History.md".freeze, "LICENSE.txt".freeze, "README.md".freeze, "jekyll-slim.gemspec".freeze, "lib/jekyll-slim.rb".freeze, "lib/jekyll/slim.rb".freeze, "lib/jekyll/slim/converter.rb".freeze, "lib/jekyll/slim/extensions.rb".freeze, "lib/jekyll/slim/include_tag.rb".freeze, "lib/jekyll/slim/version.rb".freeze, "lib/sliquid/engine.rb".freeze, "lib/sliquid/filter.rb".freeze, "lib/sliquid/interpolation.rb".freeze, "lib/sliquid/parser.rb".freeze, "spec/slim_converter_spec.rb".freeze, "spec/spec_helper.rb".freeze]
  s.homepage = "https://github.com/slim-template/jekyll-slim".freeze
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Slim-lang support for Jekyll. Handles includes and layouts as well.".freeze
  s.test_files = ["spec/slim_converter_spec.rb".freeze, "spec/spec_helper.rb".freeze]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>.freeze, ["~> 3.1"])
      s.add_runtime_dependency(%q<slim>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<jekyll>.freeze, ["~> 3.1"])
      s.add_dependency(%q<slim>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, ["~> 3.1"])
    s.add_dependency(%q<slim>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
