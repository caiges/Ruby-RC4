Gem::Specification.new do |s|
  s.name = 'ruby-rc4'
  s.version = '0.1.5'
  s.summary = 'RubyRC4 is a pure Ruby implementation of the RC4 algorithm.'

  s.required_ruby_version     = '>= 1.9.3'
  s.required_rubygems_version = '>= 1.8.11'

  s.license = 'MIT'

  s.authors = ['Caige Nichols', 'Max Prokopiev', 'Alexandar Simic']
  s.email = ['caigesn@gmail.com', 'me@maxprokopiev.com']
  s.homepage = 'http://www.caigenichols.com/'
  s.date = '2012-01-25'

  s.rdoc_options = ['--main', 'README.md']
  s.extra_rdoc_files = ['README.md']

  s.files = ['LICENSE', 'README.md', 'Rakefile', 'spec', 'lib/rc4.rb']
  s.require_paths = ['lib']
  s.test_files = Dir.glob('spec/*_spec.rb')

  s.add_development_dependency 'rspec', '>= 2.14.1'
end
