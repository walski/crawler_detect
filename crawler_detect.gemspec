# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "crawler_detect/version"

Gem::Specification.new do |spec|
  spec.name          = "crawler_detect"
  spec.version       = CrawlerDetect::VERSION
  spec.authors       = ["Pavel Kozlov"]
  spec.email         = ["loadkpi@gmail.com"]

  spec.summary       = "CrawlerDetect: detect bots/crawlers"
  spec.description   = "CrawlerDetect is a library to detect bots/crawlers via the user agent"
  spec.homepage      = "https://github.com/loadkpi/crawler_detect"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "activesupport", "~> 5.2.0"
  spec.add_development_dependency "bundler", ">= 1.15"
  spec.add_development_dependency "fuubar", "~> 2.0"
  spec.add_development_dependency "parallel_tests", "~> 2.0"
  spec.add_development_dependency "pry-meta", "~> 0.0.10"
  spec.add_development_dependency "rack-test", "~> 1.1"
  spec.add_development_dependency "rake", ">= 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "armitage-rubocop", "0.82"
end
