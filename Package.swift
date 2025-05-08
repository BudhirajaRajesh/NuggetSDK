// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NuggetSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "NuggetSDK",
            targets: ["NuggetSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/BudhirajaRajesh/NuggetInternalDependency", .exact("1.0.1")),
        .package(url: "https://github.com/BudhirajaRajesh/NuggetExternalDependecy", .exact("1.0.0"))
    ],
    targets: [
        .binaryTarget(
            name: "Nugget",
<<<<<<< Updated upstream
            url: "https://github.com/BudhirajaRajesh/Nugget/releases/download/1.0.0/Nugget.xcframework.zip",
            checksum: "d5c15910269d5f5c750bfd245fc2a6e522ded5c07c84e0ee46088102257de60f"
=======
            url: "https://github.com/BudhirajaRajesh/NuggetSDK/releases/download/0.0.2-Nugget/Nugget.xcframework.zip",
            checksum: "5cee653c3c62fd569867126d54f1a88237e491cd87265f8edc898d657a195717"
        ),
        // Binary targets previously for NuggetInternalDependency, now direct dependencies for NuggetSDK
        .binaryTarget(
            name: "NuggetFoundation",
            url: "https://github.com/BudhirajaRajesh/NuggetSDK/releases/download/0.0.1-NuggetFoundation/NuggetFoundation.xcframework.zip",
            checksum: "ca1d32c7fb127fbc615221396187b4b972917704bb6c26c7b8b5f3f10c2d2bd5"
        ),
        .binaryTarget(
            name: "NuggetJumbo",
            url: "https://github.com/BudhirajaRajesh/NuggetSDK/releases/download/0.0.2-NuggetJumbo/NuggetJumbo.xcframework.zip",
            checksum: "83d9db10df77a0ceaffd7a6eeec97595d77aab8fabae7af29a7849592c5d09c4"
        ),
        .binaryTarget(
            name: "NuggetApiManager",
            url: "https://github.com/BudhirajaRajesh/NuggetSDK/releases/download/0.0.1-ZApiManager/ZApiManager.xcframework.zip",
            checksum: "81463946199f2a6c0abc5226ca8282af64b5435c4ad365473440b9a4b25b99ef"
>>>>>>> Stashed changes
        ),
        .target(
            name: "NuggetSDK",
            dependencies: [
                .product(name: "NuggetInternalDependency", package: "NuggetInternalDependency"),
                .product(name: "NuggetExternalDependency", package: "NuggetExternalDependecy"),
                "Nugget"
            ]),
        .testTarget(
            name: "NuggetSDKTests",
            dependencies: ["NuggetSDK"]),
    ]
)
