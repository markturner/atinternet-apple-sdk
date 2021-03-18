// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "atinternet-apple-sdk",
    platforms: [.iOS(.v10), .tvOS(.v10), .watchOS(.v3)],
    products: [
        .library(name: "ATInternetTracker", targets: ["ATInternetTracker"]),
    ],
    targets: [
        .target(
            name: "ATInternetTracker",
            dependencies: ["ATInternetTrackerObjc"],
            path: "ATInternetTracker/Sources/Common",
            resources: [
                .copy("TrackerBundle.bundle"),
                .copy("DefaultConfiguration.plist"),
                .copy("DefaultConfiguration~ipad.plist"),
                .copy("DefaultConfiguration~iphone.plist"),
                .copy("DefaultConfiguration~ipod.plist"),
            ]
        ),
        .target(
            name: "ATInternetTrackerObjc",
            path: "ATInternetTracker/Sources/Objc"
        ),
    ]
)
