// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CocoaAsyncSocket",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "CocoaAsyncSocket",
            type: .dynamic,
            targets: ["CocoaAsyncSocket"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CocoaAsyncSocket",
            dependencies: [],
            path: "Source/GCD",
            publicHeadersPath: ""),

        .testTarget(name: "SharedObjCTests",
                    dependencies: ["CocoaAsyncSocket"],
                    path: "Tests/Shared/ObjC"),

        .testTarget(name: "SharedSwiftTests",
                    dependencies: ["CocoaAsyncSocket"],
                    path: "Tests/Shared/Swift")
    ]
)
