# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name    = %q{phono}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aurélien Malisart"]
  s.date = %q{2012-02-04}
  s.description = %q{Simple Ruby client for the Phono API}
  s.email = %q{aurelien.malisart@gmail.com}
  s.executables = []

  s.extra_rdoc_files = [
    "README.md"
  ]

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.homepage = %q{http://github.com/aurels/phono}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ['lib']
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Simple Ruby client for the Phono API}
  s.test_files = []

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3
    s.add_dependency(%q<httparty>)
    s.add_dependency(%q<activesupport>, '>= 2.0.0')
  end
end
