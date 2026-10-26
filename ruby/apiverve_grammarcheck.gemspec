# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_grammarcheck"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Grammar Check API - Ruby Client"
  spec.description   = "Grammar Check is a grammar checker and spell check API that inspects text for spelling and grammar errors, returning the corrected wording, error count, and a modified flag. Paid plans add detailed rule descriptions, character offsets, and suggestions for every detected mistake."
  spec.homepage      = "https://apiverve.com/marketplace/grammarcheck?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/grammarcheck-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/grammarcheck"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
