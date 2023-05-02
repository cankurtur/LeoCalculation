// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "LeoCalculation",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "LeoCalculation",
            targets: ["LeoCalculation"])
    ],
    targets: [
        .binaryTarget(
            name: "LeoCalculation",
            path: "LeoCalculation.xcframework")
    ])
