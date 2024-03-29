// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenAPIKitDemo",
    dependencies: [
        .package(url: "https://github.com/mattpolzin/OpenAPIKit", branch: "load-external-references"),
        .package(url: "https://github.com/jpsim/Yams.git", "4.0.0"..<"6.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "OpenAPIKitDemo",
            dependencies: [
                .product(name: "OpenAPIKit30", package: "OpenAPIKit"),
                .product(name: "Yams", package: "Yams")
            
            ],
            path: "Sources"),
    ]
)
