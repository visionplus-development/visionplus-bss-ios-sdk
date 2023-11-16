// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "VisionPlusBSS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "VisionPlusBSS",
            targets: ["VisionPlusBSS"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "VisionPlusBSS",
            path: "VisionPlusBSS.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)
