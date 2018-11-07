Pod::Spec.new do |spec|
  spec.name         = 'DZTRequestTool'
  spec.version      = '1.0.1'
  spec.ios.deployment_target = '8.0'
  spec.license      = { :type => 'BSD' }
  spec.homepage     = 'https://github.com/YYDD/DZTRequestTool.git'
  spec.authors      = { 'YYDD' => '615689375@qq.com' }
  spec.summary      = 'iOS Tools'
  spec.requires_arc = true


#  spec.source       = { :git => 'https://github.com/YYDD/DZTBaseProject.git',:tag => spec.version}
  spec.source       = { :git => 'https://github.com/YYDD/DZTRequestTool.git'}
  spec.source_files = 'DZTRequestCommon/*.{h,m}'
  spec.public_header_files = 'DZTRequestCommon/*.{h}'

  spec.dependency 'AFNetworking'
  spec.frameworks   = 'UIKit'

end
