Pod::Spec.new do |spec|
  spec.name         = 'WAYAppStoreWindow'
  spec.version      = '0.0.1'
  spec.license      = { :type => 'BSD' }
  spec.homepage     = 'https://github.com/weAreYeah/WAYAppStoreWindow'
  spec.authors      = { 'Raffael Hannemann' => 'hello@weareYeah.com' }
  spec.summary      = 'A drop-in replacement for INAppStoreWindow, which switches its class implementation at runtime between WAYWindow and INAppStoreWindow, depending on the OS X version.'
  spec.source       = { :git => 'https://github.com/weAreYeah/WAYAppStoreWindow.git', :tag => 'v0.0.1' }
  spec.source_files = 'WAYAppStoreWindow/*.{h,m}'
  spec.framework    = 'AppKit'
  spec.requires_arc = true
  spec.dependency     'WAYWindow', '~> 0.0.1'  
  spec.dependency     'INAppStoreWindow', '~> 1.4'
  spec.platform     = :osx
end
