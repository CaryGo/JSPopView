#
#  Be sure to run `pod spec lint JSPopView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = 'JSPopView'
  s.summary      = '类似微信pop视图 .'
  s.description = <<-DESC
					类似微信pop视图
					DESC
  s.version      = '0.0.1'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'Cary' => 'guojiashuang@live.com' }
  #s.social_media_url = 'http://blog.Cary.com'
  s.homepage     = 'https://github.com/CaryGo/JSPopView'

  s.ios.deployment_target = '7.0'
#   s.osx.deployment_target = '10.7'
#   s.watchos.deployment_target = '2.0'
#   s.tvos.deployment_target = '9.0'

  s.source       = { :git => 'https://github.com/CaryGo/JSPopView.git', :tag => s.version.to_s }
  s.requires_arc = true
  
  #s.source_files = 'Class/**/*', 'Class/*.{h,m}'
  #s.public_header_files = 'CACategories/CACategories'
  s.source_files = 'Class/**/*.{h,m}'
#   s.public_header_files = 'CACategories/**/*.h'
  
	s.frameworks = 'Foundation', 'CoreFoundation', 'UIKit'

end
