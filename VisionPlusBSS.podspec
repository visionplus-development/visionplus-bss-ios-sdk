Pod::Spec.new do |spec|
    spec.name                       = 'VisionPlusBSS'
    spec.version                    = '0.1.4'
    spec.license                    = {
        :type => 'MIT',
        :text => <<-LICENSE
        Copyright 2023 Vision+
        
        Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
        
        The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
        
        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
        LICENSE
    }
    spec.homepage                   = 'https://github.com/visionplus-development/visionplus-bss-ios-sdk'
    spec.summary                    = 'VisionPlusBSS is Business Support System for internal usage and partners'
    spec.source                     = {
        :git => "https://github.com/visionplus-development/visionplus-bss-ios-sdk.git",
        :tag => spec.version.to_s
    }
    spec.vendored_frameworks        = 'VisionPlusBSS.xcframework'
    spec.ios.deployment_target      = '13.0'
    spec.swift_versions             = '5.0'
    spec.readme                     = 'https://raw.githubusercontent.com/visionplus-development/visionplus-bss-ios-sdk/main/README.md'
    spec.authors                    = {
        'Erwindo Sianipar' => 'erwindo.sianipar@mncgroup.com',
        'Muhammad Affan' => 'muhammad.affan@mncgroup.com',
        'Handi Deyana' => 'handi.deyana@mncgroup.com'
    }
end
