# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{i18n_scope}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matthew Rudy Jacobs"]
  s.date = %q{2010-10-27}
  s.email = %q{MatthewRudyJacobs@gmail.com}
  s.files = ["Rakefile", "lib/i18n/scope.rb", "lib/i18n_scope.rb"]
  s.homepage = %q{http://github.com/matthewrudy/i18n_scope}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Magic scoping for I18n}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
