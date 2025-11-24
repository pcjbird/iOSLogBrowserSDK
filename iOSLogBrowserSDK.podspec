Pod::Spec.new do |s|
    s.name             = "iOSLogBrowserSDK"
    s.version          = "1.0.8"
    s.summary          = "Real-time iOS log viewer via LAN browser, auto-scrolls like Xcode console."
    s.description      = <<-DESC
    A real-time iOS log tracing tool that lets you view iOS app logs live in a browser over the LAN. No Mac or cable required; multiple devices can listen simultaneously, logs auto-scroll, and it’s simple to operate—perfect for mobile QA engineers.
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
