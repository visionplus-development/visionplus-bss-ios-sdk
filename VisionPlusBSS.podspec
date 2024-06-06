Pod::Spec.new do |spec|
    spec.name                       = 'VisionPlusBSS'
    spec.version                    = '1.5.1'
    spec.license                    = { :type => 'EULA' }
    spec.homepage                   = 'https://github.com/visionplus-development/visionplus-bss-ios-sdk'
    spec.summary                    = 'VisionPlusBSS is Business Support System for internal usage and partners'
    spec.source                     = {
        :git => "https://github.com/visionplus-development/visionplus-bss-ios-sdk.git",
        :tag => spec.version.to_s
    }
    spec.vendored_frameworks        = 'VisionPlusBSS.xcframework'
    spec.ios.deployment_target      = '13.0'
    spec.swift_versions             = '5.0'
    spec.authors                    = {
        'Erwindo Sianipar' => 'erwindo.sianipar@mncgroup.com',
        'Muhammad Affan' => 'muhammad.affan@mncgroup.com',
        'Handi Deyana' => 'handi.deyana@mncgroup.com'
    }
end
