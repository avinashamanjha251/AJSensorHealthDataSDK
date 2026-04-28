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
            url: "https://github.com/avinashamanjha251/AJSensorHealthDataSDK/releases/download/1.0.1/AJSensorHealthData.xcframework.zip",
            checksum: "8a6cde503673e24a60f7846abf608a1b98e28bc8ffcfb6b53e39697f85cba1ef"
        )
    ]
)
