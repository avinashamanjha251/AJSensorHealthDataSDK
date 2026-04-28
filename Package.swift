// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AJSensorHealthData",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "AJSensorHealthData",
            targets: ["AJSensorHealthData"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "AJSensorHealthData",
            url: "https://github.com/avinashamanjha251/AJSensorHealthDataSDK/releases/download/1.0.6/AJSensorHealthData.xcframework.zip",
            checksum: "7ab76b25cbc9a276ddc5b2d17fd4a557197496f59a3816a94adf7cab2115d3c5"
        )
    ]
)
