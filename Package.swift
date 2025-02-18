// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CocoaAsyncSocketDynamic",
    platforms: [
        .iOS(.v15),
        .macOS(.v13),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "CocoaAsyncSocketDynamic",
            type: .dynamic,
            targets: ["CocoaAsyncSocketDynamic"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CocoaAsyncSocketDynamic",
            dependencies: [],
            path: "Source/GCD",
            publicHeadersPath: ""),

        .testTarget(name: "SharedObjCTests",
                    dependencies: ["CocoaAsyncSocketDynamic"],
                    path: "Tests/Shared/ObjC"),

        .testTarget(name: "SharedSwiftTests",
                    dependencies: ["CocoaAsyncSocketDynamic"],
                    path: "Tests/Shared/Swift")
    ]
)
