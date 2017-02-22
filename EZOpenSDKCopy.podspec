#
# Be sure to run `pod lib lint EZOpenSDKCopy.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'EZOpenSDKCopy'
s.version          = '1.0.0'
s.summary          = 'EZOpenSDK based EZOpenSDKCopy.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
Get EZOpenSDKCopy EZOpenSDK into a library.
DESC

s.homepage         = 'https://github.com/hengyizhangcn/EZOpenSDKCopy.git'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'hengyi.zhang' => 'hengyi.zhang@uama.com.cn' }
s.source           = { :git => 'https://github.com/hengyizhangcn/EZOpenSDKCopy.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '7.0'
s.framework = 'CoreMedia', 'AudioToolbox', 'VideoToolbox', 'GLKit', 'OpenAL', 'MobileCoreServices', 'SystemConfiguration', 'CoreTelephony', 'AVFoundation'
s.ios.libraries = 'stdc++.6.0.9', 'c++', 'iconv', 'z', 'stdc++'
s.vendored_libraries = 'EZOpenSDKCopy/libEZOpenSDK.a', 'EZOpenSDKCopy/openssl/lib/libcrypto.a', 'EZOpenSDKCopy/openssl/lib/libssl.a'
s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC', 'ENABLE_BITCODE' => 'NO'}

s.subspec 'Aspects' do |ss|
ss.source_files = 'EZOpenSDKCopy/Aspects/*.{h,m}'
end
s.subspec 'CustomUI' do |ss|
ss.source_files = 'EZOpenSDKCopy/CustomUI/*.{h,m}'
end
s.subspec 'DDCategory' do |ss|
ss.source_files = 'EZOpenSDKCopy/DDCategory/*.h'
ss.subspec 'Categories' do |sss|
sss.source_files = 'EZOpenSDKCopy/DDCategory/Categories/*.{h,m}'
end
end
s.subspec 'Headers' do |ss|
ss.source_files = 'EZOpenSDKCopy/Headers/*.{h,m}'
end
s.subspec 'openssl' do |ss|
ss.subspec 'include' do |sss|
sss.subspec 'openssl' do |ssss|
ssss.source_files = 'EZOpenSDKCopy/openssl/include/openssl/*.{h,c}'
end
end
end
s.source_files = 'EZOpenSDKCopy/*.{h,m}'

s.dependency 'SDWebImage', '~>3.7.3'
s.dependency 'MBProgressHUD', '~> 0.9.2'
s.dependency 'SVProgressHUD', '~> 2.0.3'
s.dependency 'Masonry', '~> 0.6.4'
s.resources = ['EZOpenSDKCopy/*.{storyboard}', 'EZOpenSDKCopy/Resources/*.{png}']

# s.resource_bundles = {
#   'EZOpenSDKCopy' => ['EZOpenSDKCopy/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end

