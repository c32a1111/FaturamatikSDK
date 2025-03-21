#
#  Be sure to run `pod spec lint FaturamatikVerify.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "FaturamatikVerify"
  s.version      = "1.0.0"
  s.summary      = "Faturamatik-Verify"
  s.description  = "The Faturamatik Software Development kit (SDK) provides you complete steps to perform eKYC."
  s.homepage     = "https://github.com/c32a1111/FaturamatikVerify"
  s.license      = "Copyright"
  s.author       = "c32a1111"
  s.swift_version = '5.2'
  s.platform     = :ios, "13.0"
  s.source = { 
    :http => "https://github.com/c32a1111/FaturamatikSDK/releases/download/1.0.0/FaturamatikVerify.xcframework.zip",
    :sha256 => "32f160e958aa6281101b5172e522720005ed3a8b16da9945df5bb4518a91a8b0" 
  }
  s.dependency 'OpenSSL-Universal'
  s.xcconfig          = { 'OTHER_LDFLAGS' => '-weak_framework CryptoKit -weak_framework CoreNFC -weak_framework CryptoTokenKit'}
  s.ios.deployment_target = '13.0'

  # Binary XCFramework
  s.vendored_frameworks = "FaturamatikVerify.xcframework"

  

end
