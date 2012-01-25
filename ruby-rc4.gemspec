# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ruby-rc4}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Caige Nichols"]
  s.date = %q{2012-01-25}
  s.email = %q{caigesn@gmail.com}
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md", "Rakefile", "spec", "lib/rc4.rb"]
  s.homepage = %q{http://www.caigenichols.com/}
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ruby-rc4}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{RubyRC4 is a pure Ruby implementation of the RC4 algorithm.}
  s.test_files = Dir.glob('spec/*_spec.rb')

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
