// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AsyncDisplayKit",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AsyncDisplayKit",
            targets: ["AsyncDisplayKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
                    name: "AsyncDisplayKit",
                    url: "https://github.com/kasem-sm/TextureSPM/releases/download/3.2.0.2/AsyncDisplayKit.xcframework.zip",
                    checksum: "0112abecbfc48d7770fdddc6caa0f965649c7b120e8a0fa7708326ac3aaae154"
                )
    ],
    cxxSettings: [
        .define("AS_USE_VIDEO", to: "1")
    ],
    swiftSettings: [
        .define("AS_USE_VIDEO")
    ]
)
