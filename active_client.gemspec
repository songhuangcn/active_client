# frozen_string_literal: true

require_relative "lib/active_client/version"

Gem::Specification.new do |spec|
  spec.name = "active_client"
  spec.version = ActiveClient::VERSION
  spec.authors = ["Song Huang"]
  spec.email = ["songhuangcn@qq.com"]

  spec.summary = "HTTP client."
  spec.description = "Declare HTTP client classes that can be run by a variety of adapters."
  spec.homepage = "https://github.com/songhuangcn/active_client"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]
end
