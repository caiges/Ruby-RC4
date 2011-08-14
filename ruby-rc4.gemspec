Gem::Specification.new do |s|

  # Change these as appropriate
  s.name              = "ruby-rc4"
  s.version           = "0.1.2"
  s.summary           = "RubyRC4 is a pure Ruby implementation of the RC4 algorithm."
  s.author            = "Caige Nichols"
  s.email             = "caigesn@gmail.com"
  s.homepage          = "http://www.caigenichols.com/"

  s.has_rdoc          = false
  s.extra_rdoc_files  = %w(README.md)
  s.rdoc_options      = %w(--main README.md)

  # Add any extra files to include in the gem
  s.files             = %w(README.md Rakefile) + Dir.glob("{spec,lib/**/*}")
  s.require_paths     = ["lib"]

  # If you want to depend on other gems, add them here, along with any
  # relevant versions
  # s.add_dependency("some_other_gem", "~> 0.1.0")

  # If your tests use any gems, include them here
  s.add_development_dependency("rspec")

  # If you want to publish automatically to rubyforge, you'll may need
  # to tweak this, and the publishing task below too.
  s.rubyforge_project = "ruby-rc4"
end
