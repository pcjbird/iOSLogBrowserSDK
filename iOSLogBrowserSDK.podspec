Pod::Spec.new do |s|
    s.name             = "iOSLogBrowserSDK"
    s.version          = "1.0.6"
    s.summary          = "A real-time iOS log tracing tool that enables viewing iOS logs on a PC web browser within a local area network. The log display automatically scrolls similar to Xcode console."
    s.description      = <<-DESC
    一个实时的iOS日志跟踪工具，让您在局域网内通过浏览器实时查看iOS应用日志。无需Mac电脑和数据线连接，支持多台设备同时监听，日志自动滚动显示，操作便捷，是移动测试人员的理想选择。
    DESC
    s.homepage         = "https://github.com/pcjbird/iOSLogBrowserSDK"
    s.license          = 'MIT'
    s.author           = {"pcjbird" => "pcjbird@hotmail.com"}
    s.source           = {:git => "https://github.com/pcjbird/iOSLogBrowserSDK.git", :tag => s.version.to_s}
    s.social_media_url = 'https://www.lessney.com'
    s.requires_arc     = true
    s.documentation_url = 'https://github.com/pcjbird/iOSLogBrowserSDK/blob/master/README.md'
    s.screenshot       = 'https://raw.githubusercontent.com/pcjbird/iOSLogBrowserSDK/refs/heads/master/logo.png'

    s.platform         = :ios, '10.0'
    s.frameworks       = 'Foundation', 'UIKit'
    s.vendored_frameworks = 'iOSLogBrowserSDK/iOSLogBrowserSDK.xcframework'
    s.resource = 'iOSLogBrowserSDK/iOSLogBrowserSDK.bundle'

    s.dependency 'XLFacility'
    s.dependency 'YYWebImage'

    s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }


end
