#
#  Be sure to run `pod spec lint AndSVGAPlayer.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "AndSVGAPlayer"
  s.version      = "0.1.0"
  s.summary      = "A short description of AndSVGAPlayer."

  s.description  = <<-DESC
  iOS SVGAPlayer, fix bugs
                   DESC

  s.homepage     = "https://github.com/DrXbobo/AndSVGAPlayer"
  

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wenbo xu' => 'xuwenbo@sencent.com' }
  s.source           = { :git => "https://github.com/DrXbobo/AndSVGAPlayer.git", :tag => s.version.to_s }

  s.ios.deployment_target = '15.0'

  s.source_files  = "Source", "Source/**/*.{h,m}"
  s.public_header_files = "Source/**/*.h"

end
