Pod::Spec.new do |s|
  s.name             = 'SendbirdAIAgentCore'
  s.version          = '5.0.5' 
  s.summary          = 'Sendbird AI Agent Core Library - Security Research'
  s.description      = 'Authorized security audit for Sendbird AI ecosystem.'
  s.homepage         = 'https://github.com/ilhamal7/sendbird-ios-distribution'
  s.license          = { :type => 'Commercial', :text => 'Copyright Sendbird' }
  s.author           = { 'zerotohero (Security Research)' => 'zerotohero@bugcrowdninja.com' }

  s.source           = { 
    :git => 'https://github.com/ilhamal7/sendbird-ios-distribution.git', 
    :tag => '5.0.5' 
  }

  s.ios.deployment_target = '14.0'
  s.swift_version    = '5.7'

  s.source_files     = 'Sources/**/*.{h,m}'

  s.dependency 'SendbirdChatSDK', '>= 4.38.1'
end
