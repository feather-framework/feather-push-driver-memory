// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "feather-push-driver-memory",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "FeatherPushDriverMemory", targets: ["FeatherPushDriverMemory"]),
    ],
    dependencies: [
        .package(url: "https://github.com/feather-framework/feather-push.git", .upToNextMinor(from: "0.1.0")),
    ],
    targets: [
        .target(
            name: "FeatherPushDriverMemory",
            dependencies: [
                .product(name: "FeatherPush", package: "feather-push"),
            ]
        ),
        .testTarget(
            name: "FeatherPushDriverMemoryTests",
            dependencies: [
                .product(name: "FeatherPush", package: "feather-push"),
                .product(name: "XCTFeatherPush", package: "feather-push"),
                .target(name: "FeatherPushDriverMemory"),
            ]
        ),
    ]
)
