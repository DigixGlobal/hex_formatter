# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hex_formatter/version"

Gem::Specification.new do |spec|
  spec.name          = "hex_formatter"
  spec.version       = HexFormatter::VERSION
  spec.authors       = ["Anthony Eufemio"]
  spec.email         = ["ace@dgx.io"]

  spec.summary       = %q{Format IPFS addresses to hex and back}
  spec.description   = %q{Convert hexadecimal to Base58 formatted strings and back with support for Digix Asset IDs and IPFS hashes}
  spec.homepage      = "https://digix.global"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "base58"
  spec.add_dependency 'typhoeus'
  spec.add_dependency "digix-eth", ">= 0.5.6"
end
