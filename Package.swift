// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HederaProto",
    products: [
        .library(
            name: "HederaProtoServices",
            targets: ["HederaProtoServices"]),
        .library(
            name: "HederaProtoStreams",
            targets: ["HederaProtoStreams"]),
        .library(
            name: "HederaProtoMirror",
            targets: ["HederaProtoMirror"]),
    ],
    dependencies: [
        .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", from: "1.17.0"),
        .package(name: "grpc-swift", url: "https://github.com/grpc/grpc-swift.git", from: "1.2.0")
    ],
    targets: [
        .target(
            name: "HederaProtoServices",
            dependencies: ["SwiftProtobuf", .product(name: "GRPC", package: "grpc-swift")]),
        .target(
            name: "HederaProtoStreams",
            dependencies: ["SwiftProtobuf", .product(name: "GRPC", package: "grpc-swift"), "HederaProtoServices"]),
        .target(
            name: "HederaProtoMirror",
            dependencies: ["SwiftProtobuf", .product(name: "GRPC", package: "grpc-swift"), "HederaProtoServices"]),
        .testTarget(
            name: "HederaProtoServicesTests",
            dependencies: ["HederaProtoServices", "HederaProtoStreams", "HederaProtoMirror"]),
    ]
)
