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
            url: "https://github.com/avinashamanjha251/AJSensorHealthDataSDK/releases/download/1.0.11/AJSensorHealthData.xcframework.zip",
            checksum: "372bbf4ce67b5b333a0ed82dbaf9dd30a55c1dd51991b1d4e9e7d758216bfd87"
        )
    ]
)
