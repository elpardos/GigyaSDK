Pod::Spec.new do |s|
  s.name         = "Gigya-iOS-ObjC-SDK"
  s.version      = "3.7.5.1"
  s.summary      = "The iOS client library provides an Objective-C interface for the Gigya API"
  s.homepage     = "https://github.com/elpardos/GigyaSDK"
  s.license      = {
    :type => 'Copyright',
    :text => 'Copyright 2020 Gigya. See the terms of service at http://www.gigya.com/terms-of-service/'
  }
  s.authors      = { 'Mark Pardington - Podspec Maintainer' => 'mark@pea-enterprises.com' }
  s.source       = { :http => "https://raw.githubusercontent.com/elpardos/GigyaSDK/master/#{s.version}/GigyaSDK.zip" }
  s.requires_arc = false
  s.platform     = :ios, '8.0'
  s.source_files = 'GigyaSDK.framework/Headers/*.h'
  s.preserve_paths = 'GigyaSDK.framework/*'
  s.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Gigya-iOS-SDK"' }
  s.ios.deployment_target   = '8.0'
  s.ios.frameworks          = 'GigyaSDK', 'Foundation', 'Security'
  s.ios.vendored_frameworks = 'GigyaSDK.framework'
end
