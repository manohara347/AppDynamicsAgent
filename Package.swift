// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//let url = "https://cdn.appdynamics.com/eum-mobile/iOSAgent-2023.8.0.4197.zip"
//let checksum = "520fb6a6edafb331f7dd3c72c9b337e7ee84d63a9d396d924135c6e98b340f7a"
//let url = "https://github.com/manohara347/AppDynamicsAgent/releases/download/1.0.16/ADEUMInstrumentation.xcframework.zip"
//let checksum = "2418cf72ee407e0ab2df676a86958354d97e22a5174a1e49a61bed13d6ef3d1f"
let url = "https://github.com/manohara347/AppDynamicsAgent/releases/download/1.0.18/mobile-ios-2023.7.0.zip"
let checksum = "7cfcad433bff4f07026d94fe31e83ab5fbc446cbd71b3b476ec509d2e7fe3e15"

let package = Package(
    name: "AppDynamicsAgent",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AppDynamicsAgent",
            targets: ["ADEUMInstrumentation"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
                    name: "ADEUMInstrumentation",
                    url: url,
                    checksum: checksum)
    ]
)
