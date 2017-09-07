#
# Be sure to run `pod lib lint pjsip-opus-ssl.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "pjsip-opus-ssl"
  s.version          = "2.6.0"
  s.summary          = "PJSIP with OPUS and OPENSSL Support for iOS"
  s.description      = <<-DESC
                       PJSIP 2.6 for iOS built with OpenSSL and Opus Codec support
                       DESC
  s.homepage         = "https://github.com/georgepoenaru/pjsip-opus-ssl.git"
  s.license          = 'MIT'
  s.author           = { "George Poenaru" => "george.poenaru@me.com" }
  s.source           = { :git => "https://github.com/georgepoenaru/pjsip-opus-ssl.git", :tag => s.version.to_s }
  s.social_media_url = 'https://keybase.io/georgepoenaru'

  s.platform     = :ios, '8.0'
  s.requires_arc = false

  s.preserve_paths = 'include/**/**/*{h,hpp}'

  s.vendored_libraries = 'lib/*a'

  s.frameworks = 'CFNetwork', 'AudioToolbox', 'AVFoundation'

  s.header_mappings_dir = 'include/'

  s.module_name = 'Pjsip'

  s.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1',
    'HEADER_SEARCH_PATHS'  => '$(inherited) $(PODS_ROOT)/pjsip-opus-ssl/include'
  }

end
