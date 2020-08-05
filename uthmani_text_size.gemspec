lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "uthmani_text_size/version"

Gem::Specification.new do |spec|
  spec.name          = "uthmani_text_size"
  spec.version       = UthmaniTextSize::VERSION
  spec.authors       = ["Abdullah Hashim"]
  spec.email         = ["abdul@hey.com"]

  spec.summary       = %q{Accurately counts the number of letters in a given Uthmani string.}
  spec.homepage      = "https://github.com/AbuMareBear/uthmani_text_size"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
