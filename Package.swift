// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibraryA",
    products: [
        .library(
            name: "MyLibraryA",
            targets: ["MyLibraryA"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", exact: "5.10.2")
    ],
    targets: [
        .target(
            name: "MyLibraryA",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire")
            ]
        ),
    ]
)
