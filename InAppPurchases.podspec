#
# Be sure to run `pod lib lint InAppPurchases.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'InAppPurchases'
  s.version          = '1.0.1'
  s.summary          = 'In-app purchases handler written in swift'
  s.swift_version    = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'Handles in-app purchases in swift in a convenient way'
                       DESC

  s.homepage         = 'https://github.com/umarawais45/InAppPurchases'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Umar Awais' => 'umar.awais45@gmail.com' }
  s.source           = { :git => 'https://github.com/umarawais45/InAppPurchases.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.platform = :ios, '13.0'

  s.source_files = 'InAppPurchases/Classes/**/*'
  
  # s.resource_bundles = {
  #   'InAppPurchases' => ['InAppPurchases/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
