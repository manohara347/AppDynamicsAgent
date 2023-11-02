// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//let url = "https://cdn.appdynamics.com/eum-mobile/iOSAgent-2023.8.0.4197.zip"
//let checksum = "520fb6a6edafb331f7dd3c72c9b337e7ee84d63a9d396d924135c6e98b340f7a"
let url = "https://appdynamics.jfrog.io/artifactory/maven-releases/com/appdynamics/eum/iOSAgentSPM/2023.10.1.4260/iOSAgentSPM-2023.10.1.4260.zip"
let checksum = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
//let url = "https://github.com/manohara347/AppDynamicsAgent/releases/download/1.0.18/mobile-ios-2023.7.0.zip"
//let checksum = "7cfcad433bff4f07026d94fe31e83ab5fbc446cbd71b3b476ec509d2e7fe3e15"

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
