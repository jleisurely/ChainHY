#
# Be sure to run `pod lib lint HYCloudChain.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HYCloudChain'
  s.version          = '0.1.0'
  s.summary          = 'A short description of HYCloudChain.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/wangyu1001@live.cn/HYCloudChain'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wangyu1001@live.cn' => 'wangyu@houyicloud.com' }
  s.source           = { :git => 'https://github.com/wangyu1001@live.cn/HYCloudChain.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'HYCloudChain/Classes/**/*'
  s.dependency 'HYUICommonTool'
  s.dependency 'HYBaseModule'
  s.dependency 'FFPopup'
  s.dependency 'Masonry'
  s.dependency 'ReactiveObjC','~> 3.1.0'
  s.dependency 'HYDefine'
  s.dependency 'SVProgressHUD'
  s.dependency 'TYPagerController'
  s.dependency 'GetuiSDK', '~> 1.4.3'
  s.dependency 'RongCloudIM/IMLib'
  #  s.dependency 'HYDefine'
  s.prefix_header_contents = '#import <UIColor+Random.h>', '#import <FFPopup/FFPopup.h>', '#import <Masonry/Masonry.h>', '#import <ReactiveObjC/ReactiveObjC.h>', '#import <UILabel+Category.h>', '#import <HYDefine/HYDefine.h>', '#import <UIButton+Category.h>', '#import <SVProgressHUD/SVProgressHUD.h>', '#import <WGlobalJudgeMethod.h>', '#import <TYPagerController/TYTabPagerView.h>', '#import <HYUICommonTool/HYUICommonTool.h>', '#import <HYBaseModule/HYBaseModule.h>'
  # s.resource_bundles = {
  #   'HYCloudChain' => ['HYCloudChain/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
