// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SimpleJWTMiddleware",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "SimpleJWTMiddleware", targets: ["SimpleJWTMiddleware"]),
    ],
    dependencies: [
    .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0-beta.3"),
    .package(url: "https://github.com/vapor/jwt.git", from: "4.0.0-beta.2"),
    ],
    targets: [
        .target(name: "SimpleJWTMiddleware", dependencies: ["Vapor", "JWT"])
    ]
)
