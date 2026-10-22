// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterBolt",
    products: [
        .library(name: "TreeSitterBolt", targets: ["TreeSitterBolt"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterBolt",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                "src/scanner.c",
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterBoltTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterBolt",
            ],
            path: "bindings/swift/TreeSitterBoltTests"
        )
    ],
    cLanguageStandard: .c11
)
