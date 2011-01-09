# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{i18n_scope}
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matthew Rudy Jacobs"]
  s.date = %q{2011-01-09}
  s.email = %q{MatthewRudyJacobs@gmail.com}
  s.extra_rdoc_files = ["README"]
  s.files = ["Rakefile", "test/test_helper.rb", "test/i18n_scope_test.rb", "lib/i18n_scope.rb", "lib/i18n/scope.rb", "README"]
  s.homepage = %q{http://github.com/matthewrudy/i18n_scope}
  s.rdoc_options = ["--main", "README"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Magic scoping for I18n}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
    else
      s.add_dependency(%q<i18n>, [">= 0"])
    end
  else
    s.add_dependency(%q<i18n>, [">= 0"])
  end
end
