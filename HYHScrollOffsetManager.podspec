#
# Be sure to run `pod lib lint HYHScrollOffsetManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HYHScrollOffsetManager'
  s.version          = '0.1.0'
  s.summary          = 'Simply construct do something with scroll view offset'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
According to the scroll view offset do something, like change navigation bar alpha. I wrapped a change navigation bar alpha animation, you can make custom animation or do something by yourself.
                       DESC

  s.homepage         = 'https://github.com/HaoXianSen/HYHScrollOffsetManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'Harry' 
  s.source           = { :git => 'https://github.com/HaoXianSen/HYHScrollOffsetManager', :tag => s.version.to_s}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HYHScrollOffsetManager/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HYHScrollOffsetManager' => ['HYHScrollOffsetManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
