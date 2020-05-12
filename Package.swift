// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StompClientLib",
    platforms: [
        .iOS(.v9),
        .tvOS(.v10)
    ],
    products: [
        .library(
            name: "StompClientLib",
            targets: ["StompClientLib"]),
    ],
     
    dependencies: [
        .package(url: "https://github.com/soledue/SocketRocket.git",
                 from: "1.0.0")
    ],
    
    targets: [
        .target(
            name: "StompClientLib",
            dependencies: ["SocketRocket"],
            path: "StompClientLib"
            )
    ]
)
