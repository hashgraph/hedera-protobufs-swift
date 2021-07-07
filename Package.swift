// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HederaProto",
    products: [
        .library(
            name: "HederaProto",
            targets: ["HederaProto"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "HederaProto",
            dependencies: []),
        .testTarget(
            name: "HederaProtoTests",
            dependencies: ["HederaProto"]),
    ]
)
