#
#  Be sure to run `pod spec lint FaturamatikVerify.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "FaturamatikVerify"
  s.version      = "1.0.9"
  s.summary      = "Faturamatik-Verify"
  s.description  = "The Faturamatik Software Development kit (SDK) provides you complete steps to perform eKYC."
  s.homepage     = "https://github.com/c32a1111/FaturamatikVerify"
  s.license      = "Copyright"
  s.author       = "c32a1111"
  s.swift_version = '5.2'
  s.platform     = :ios, "13.0"
  s.source = { 
    "http" => "https://github.com/c32a1111/FaturamatikSDK/releases/download/1.0.9/FaturamatikVerify.xcframework.zip",
    :sha256 => "252f7775c720a6c7e9844c726d02db156b528a729408b4a8b6d04784735cd3a7" 
  }
  s.source_files = "FaturamatikVerify/**/*.{h,m,swift,xib,mlpackage,mlmodel}"
  s.resources    = "FaturamatikVerify/**/Assets/**/*.*"
  s.dependency 'OpenSSL-Universal'
  s.xcconfig          = { 'OTHER_LDFLAGS' => '-weak_framework CryptoKit -weak_framework CoreNFC -weak_framework CryptoTokenKit'}
  s.ios.deployment_target = '13.0'

  # Binary XCFramework
  s.vendored_frameworks = "FaturamatikVerify.xcframework"

  

end
