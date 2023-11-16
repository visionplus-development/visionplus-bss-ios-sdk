Pod::Spec.new do |spec|
    spec.name                   = 'VisionPlusBSS'
    spec.version                = '1.0.0'
    spec.license                = { :type => 'Apache', :file => 'LICENSE' }
    spec.homepage               = 'https://gitlab.visionplus.id/fe-bss/ios-auth-sdk'
    spec.summary                = 'VisionPlusBSS is Business Support System for internal usage and partners'
    spec.source                 = { :git => 'https://gitlab.visionplus.id/fe-bss/ios-auth-sdk', :tag => spec.version.to_s }
    spec.vendored_frameworks    = "Frameworks/VisionPlusBSS.xcframework"
    spec.source_files           = "VisionPlusBSS/**/*"
    spec.swift_versions         = '5.0'
    spec.ios.deployment_target  = '13.0'

    spec.authors = {
        'Erwindo Sianipar' => 'erwindo.sianipar@mncgroup.com',
        'Muhammad Affan' => 'muhammad.affan@mncgroup.com'
    }
    
    spec.resource_bundles = {
        'VisionPlusBSS' => ['VisionPlusBSS/Resources/*.png']
    }

    spec.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    spec.user_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }

    spec.dependency "FBSDKLoginKit", "16.2.1"
    spec.dependency "GoogleSignIn", "7.0.0"
end
