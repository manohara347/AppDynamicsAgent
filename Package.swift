// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppDynamicsAgent",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AppDynamicsAgent",
            targets: ["AppDynamicsAgent"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
                    name: "AppDynamicsAgent",
                    url: "https://cdn.appdynamics.com/eum-mobile/iOSAgent-2023.7.0.4175.zip",
                    checksum: "b49ede8f76fc161b8aac92ecbf9de1f2a442ca3f94ed6d458beb54abf5b658e6")
    ]
)
