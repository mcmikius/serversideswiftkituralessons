// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EmojiJournalServer",
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "2.6.2"),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.8.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "EmojiJournalServer",
            dependencies: ["Kitura", "HeliumLogger"]),
        .testTarget(
            name: "EmojiJournalServerTests",
            dependencies: ["EmojiJournalServer"]),
    ]
)