// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HederaProtoExamples",
    dependencies: [
        .package(name: "HederaProto", path: "../"),
        .package(name: "grpc-swift", url: "https://github.com/grpc/grpc-swift.git", from: "1.2.0")
    ],
    targets: [
        .target(
            name: "GetAccountBalance",
            dependencies: [
                .product(name: "HederaProtoServices", package: "HederaProto"),
                .product(name: "GRPC", package: "grpc-swift")
            ]),
    ]
)
