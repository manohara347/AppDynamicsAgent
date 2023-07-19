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
                    url: "https://artifactory.bare.appdynamics.com/ui/native/maven-releases/com/appdynamics/eum/mobile-ios/2023.5.0.3977/mobile-ios-2023.5.0.3977.zip",
                    checksum: "45ace21501b371766654a22c7cc191209664399dcc514c79c49c7d6c6db335f0")
    ]
)
