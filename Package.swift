// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestingNewSPM",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TestingNewSPM",
            targets: ["TestingNewSPM"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
                    name: "TestingNewSPM",
                    url: "https://github.com/manohara347/TestingFramework/releases/download/1.0.0/ADEUMInstrumentation.xcframework.zip",
                    checksum: "633c29cd601e3cba0091fb889184ed3bfa314b175397ffb57eba938dd07b1067")
    ]
)
