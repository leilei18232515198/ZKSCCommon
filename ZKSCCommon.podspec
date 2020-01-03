Pod::Spec.new do |spec|
  spec.name         = "ZKSCCommon"
  spec.version      = "1.0.2"
  spec.summary      = "公共依赖库"
  spec.description  = "公共库文件"
  spec.homepage     = "https://github.com/leilei18232515198/ZKSCCommon"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "leilei18232515198" => "“598090063@qq.com”" }
  spec.platform     = :ios, "8.0"
  spec.source       = { :git => "https://github.com/leilei18232515198/ZKSCCommon.git", :tag => spec.version }
  #spec.source_files  = "ZKSCCommon/*.{h,m}"
   spec.subspec 'Common' do |ss|
      ss.source_files = 'ZKSCCommon/Classes/Common/*'
  end
  #spec.public_header_files = "Pod/Classes/Common"
  spec.requires_arc = true
  spec.dependency "YYKit"
  spec.dependency "MGJRouter"
end
