// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "DarkImagePublishPlugin",
    platforms: [.macOS(.v12), .iOS(.v15)],
    products: [
        .library(
            name: "DarkImagePublishPlugin",
            targets: ["DarkImagePublishPlugin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/Publish.git", from: "0.9.0")
    ],
    targets: [
        .target(
            name: "DarkImagePublishPlugin",
            dependencies: ["Publish"]
        ),
        .testTarget(
            name: "DarkImagePublishPluginTests",
            dependencies: ["DarkImagePublishPlugin"]
        ),
    ]
)
