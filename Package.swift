// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "RxOnDemandResources",
    platforms: [
        .macOS(.v10_10), .iOS(.v8), // .tvOS(.v9), .watchOS(.v3)
    ],
    products: [
        .library(
            name: "RxOnDemandResources",
            targets: ["RxOnDemandResources"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "RxOnDemandResources",
            dependencies: ["RxSwift"], // "RxRelay"],
            path: "." // Sources
        ),
//        .testTarget(
//            name: "RxOnDemandResourcesTests",
//            dependencies: ["RxOnDemandResources"],
//            path: "Tests"
//        )
    ]
)
