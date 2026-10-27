Pod::Spec.new do |s|
  s.name             = 'APIVerveGrammarCheck'
  s.version          = '1.2.3'
  s.summary          = 'Grammar Check is a grammar checker and spell check API that inspects text for spelling and grammar errors, returning the corrected...'
  s.description      = <<-'DESC'
Grammar Check is a grammar checker and spell check API that inspects text for spelling and grammar errors, returning the corrected wording, error count, and a modified flag. Paid plans add detailed rule descriptions, character offsets, and suggestions for every detected mistake.

This iOS/macOS SDK provides a convenient way to access the Grammar Check from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/grammarcheck?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/grammarcheck-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveGrammarCheck/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
