Pod::Spec.new do |s|
  s.name             = 'SendbirdSplash'
  s.version          = '5.0.4'
  s.summary          = 'Security Research - Part of Sendbird AI ecosystem audit'
  s.homepage         = 'https://github.com/ilhamal7/sendbird-ios-distribution'
  s.license          = { :type => 'Commercial', :text => 'Copyright Sendbird' }
  s.author           = { 'zerotohero' => 'zerotohero@bugcrowdninja.com' }
  s.source           = { :git => 'https://github.com/ilhamal7/sendbird-ios-distribution.git', :tag => "#{s.version}" }
  s.ios.deployment_target = '14.0'
  s.swift_version    = '5.7'
  s.source_files     = '**/*.{swift}'
end
