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
            url: "https://github.com/avinashamanjha251/AJSensorHealthDataSDK/releases/download/1.0.8/AJSensorHealthData.xcframework.zip",
            checksum: "4e4b64bb890ac7cdaca574b3dd8cf2969e82d3cec96a25f9ecd240e99d48dd01"
        )
    ]
)
