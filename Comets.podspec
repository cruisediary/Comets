#
# Be sure to run `pod lib lint Comets.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Comets'
  s.version          = '0.3.0'
  s.summary          = '☄️Comets: Animating Particles in Swift'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '☄️Comets: Animating Particles in Swift customizing your comets'

  s.homepage         = 'https://github.com/cruisediary/Comets'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cruz' => 'cruzdiary@gmail.com' }
  s.source           = { :git => 'https://github.com/cruisediary/Comets.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.source_files = 'Comets/Sources/**/*'

end
