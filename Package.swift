// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "glacier-swift",
  platforms: [.macOS(.v10_10)],
  products: [
    // .executable(name: "glacier", targets: ["glacier"]),
    .library(name: "glacierlib", targets: ["glacier"]),
  ],
  dependencies: [
     .package(url: "https://github.com/apple/swift-argument-parser.git", from: "0.3.1"),
  ],
  targets: [
    .target(
      name: "glacier",
      dependencies: [
        .product(name: "ArgumentParser", package: "swift-argument-parser")
      ]),
  ]
)
