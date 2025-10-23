#
#  Be sure to run `pod spec lint AndSVGAPlayer.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "AndSVGAPlayer"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of AndSVGAPlayer."

  spec.description  = <<-DESC
  iOS SVGAPlayer, fix bugs
                   DESC

  spec.homepage     = "http://EXAMPLE/AndSVGAPlayer"
  

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wenbo xu' => 'xuwenbo@sencent.com' }

  s.ios.deployment_target = '15.0'

  spec.source       = { :git => "http://EXAMPLE/AndSVGAPlayer.git", :tag => "#{spec.version}" }


  spec.source_files  = "Source", "Source/**/*.{h,m}"
  spec.public_header_files = "Source/**/*.h"

end
