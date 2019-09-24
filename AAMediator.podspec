#
# Be sure to run `pod lib lint AAMediator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AAMediator'
  s.version          = '1.0.1'
  s.summary          = 'iOS解耦工具'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Fxxxxxx/AAMediator'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aaron Feng' => '516674612@qq.com' }
  s.source           = { :git => 'https://github.com/Fxxxxxx/AAMediator.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_version = '5'

  s.source_files = 'AAMediator/Classes/**/*'
  s.dependency 'AALRUCache'
end
