#
# Be sure to run `pod lib lint VLWeatherSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VLWeatherSDK'
  s.version          = '0.1.0'
  s.summary          = 'Getting real-time weather'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Provide the function of getting real-time weather,Weather information can be obtained by city name, zip code
                       DESC

  s.homepage         = 'https://github.com/xietingsong9/VunWeatherSDK.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xietingsong9' => 'xietingsong3@163.com' }
  s.source           = { :git => 'https://github.com/xietingsong9/VunWeatherSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'VLWeatherSDK/Classes/**/*'
  
  # s.resource_bundles = {
  #   'VLWeatherSDK' => ['VLWeatherSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
