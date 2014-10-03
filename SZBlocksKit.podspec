Pod::Spec.new do |s|
  s.name                  = 'SZBlocksKit'
  s.version               = '2.2.5'
  s.license               = 'MIT'
  s.summary               = 'The Objective-C block utilities you always wish you had.'
  s.homepage              = 'https://zwaldowski.github.io/BlocksKit'
  s.author                = { 'Zachary Waldowski' => 'zach@waldowski.me',
                              'Alexsander Akers'  => 'a2@pnd.mn' }
  s.source                = { :git => 'https://github.com/zwaldowski/BlocksKit.git', :tag => "v#{s.version}" }
  s.xcconfig              = {'CLANG_WARN_DIRECT_OBJC_ISA_USAGE' => 'NO'}
  s.requires_arc          = true
  s.osx.deployment_target = '10.8'
  s.ios.deployment_target = '6.0'

  s.default_subspec = 'All'
  s.subspec 'All' do |ss|
    ss.dependency 'SZBlocksKit/Core'
    ss.dependency 'SZBlocksKit/DynamicDelegate'
    ss.ios.dependency 'SZBlocksKit/MessageUI'
    ss.ios.dependency 'SZBlocksKit/QuickLook'
    ss.ios.dependency 'SZBlocksKit/UIKit'
  end

  s.subspec 'Core' do |ss|
    ss.source_files = 'BlocksKit/BlocksKit.h', 'BlocksKit/Core/*.{h,m}'
  end

  s.subspec 'DynamicDelegate' do |ss|
    ss.source_files = 'BlocksKit/DynamicDelegate/*.{h,m}', 'BlocksKit/DynamicDelegate/Foundation/*.{h,m}'
  end

  s.subspec 'MessageUI' do |ss|
    ss.dependency 'SZBlocksKit/Core'
    ss.dependency 'SZBlocksKit/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit/BlocksKit+MessageUI.h', 'BlocksKit/MessageUI/*.{h,m}'
    ss.ios.frameworks = 'MessageUI'
  end

  s.subspec 'QuickLook' do |ss|
    ss.dependency 'SZBlocksKit/Core'
    ss.dependency 'SZBlocksKit/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit/BlocksKit+QuickLook.h', 'BlocksKit/QuickLook/*.{h,m}'
    ss.ios.frameworks = 'QuickLook'
  end

  s.subspec 'UIKit' do |ss|
    ss.dependency 'SZBlocksKit/Core'
    ss.dependency 'SZBlocksKit/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit/BlocksKit+UIKit.h', 'BlocksKit/UIKit/*.{h,m}'
  end
end
