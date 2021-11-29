require_relative 'lib/sayagain/version'

Gem::Specification.new do |spec|
  spec.name          = "sayagain"
  spec.version       = SayAgain::VERSION
  spec.authors       = ["Ryan Oberholzer"]
  spec.email         = ["ryanoberholzer@gmail.com"]

  spec.summary       = %q{Translate files from one language to another}
  spec.description   = %q{Quick and easy way to translate html files from one language to another}
  spec.homepage      = "https://github.com/ryanza"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ryanza/sayagain"
  spec.metadata["changelog_uri"] = "https://github.com/ryanza/sayagain/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
