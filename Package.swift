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
            url: "https://github.com/avinashamanjha251/AJSensorHealthDataSDK/releases/download/1.0.2/AJSensorHealthData.xcframework.zip",
            checksum: "8fc9a18b803e1f57b3a372e39648c866fb00bdfc3b63a9f11e6942f9847af6a6"
        )
    ]
)
