#
# Be sure to run `pod lib lint AvalonDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AvalonDemo"
  s.version          = "0.1.1"
  s.summary          = "A Pod that helps to import necessary things related to Order Management."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "This Pod contains all the Global, Model, View and Controller classes related to Order Management which may be usedful while creating a new Order Management Application."

  s.homepage         = "https://github.com/smitshah14/AvalonDemo.git"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'Ahold USA - Propulsion Labs'
  s.author           = { "SMIT V SHAH" => "smit.shah@ahold.com" }
  s.source           = { :git => "https://github.com/smitshah14/AvalonDemo.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'AvalonDemo' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
