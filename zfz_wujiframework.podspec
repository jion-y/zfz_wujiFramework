#
# Be sure to run `pod lib lint wujicFrameWorkDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'zfz_wujiframework'
  s.version          = '0.1.5'
  s.summary          = 'wujiFrameWork ceshi'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description  = <<-DESC
      一个用来实现多主题管理的 iOS 库，一个测试的库
                 DESC

  s.homepage         = 'https://github.com/jion-y/zfz_wujiFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wuji' => 'liuming@wuji.co' }
  s.source           = { :git => 'https://github.com/jion-y/zfz_wujiFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

#  s.source_files = 'zfz_wujiframework/Classes/**/*'

  s.vendored_frameworks = 'zfz_wujiframework/*.{framework}'
  s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.frameworks = 'UIKit', 'MapKit','OpenGLES','Metal','SystemConfiguration','CoreTelephony','CoreAudio','AudioToolbox','GLKit','VideoToolbox'
  s.libraries = 'resolv','c++'
  # s.resource_bundles = {
  #   'wujicFrameWorkDemo' => ['zfz_wujiframework/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
