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
  s.summary      = "SVGAPlayer for iOS with bug fixes"
  s.description  = "iOS SVGAPlayer, fix bugs and improve stability"
  s.homepage     = "https://github.com/DrXbobo/AndSVGAPlayer"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'wenbo xu' => 'xuwenbo@sencent.com' }
  s.source       = { :git => "https://github.com/DrXbobo/AndSVGAPlayer.git" }
  s.ios.deployment_target = '15.0'
  s.swift_version = '5.0'

  s.subspec 'Core' do |ss|
    # 把 ProtoFiles 的头文件也加入 Core 编译路径
    ss.source_files  = "Source/*.{h,m}", "Source/pbobjc/*.{h,m}"
    ss.requires_arc = true
    ss.dependency 'SSZipArchive', '~> 2.4.3'
    ss.library = "z"
    ss.framework = "AVFoundation"
  end

  s.subspec 'ProtoFiles' do |ss|
    ss.source_files  = "Source/pbobjc/*.{h,m}"
    ss.requires_arc = false
    ss.dependency 'Protobuf', '~> 4.33.0'
    ss.pod_target_xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1',
    }
  end 
end
