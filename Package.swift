// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let url = "https://github.com/manohara347/TestingNewSPM/releases/download/1.0.0/ADEUMInstrumentation-1.0.0.xcframework.zip"
let checksum = "a0728ca957cc36e92319522b2a1613b62579aa14c1726d8246b3f4b3fc188076"

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
