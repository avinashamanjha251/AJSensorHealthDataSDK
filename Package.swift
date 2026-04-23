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
            checksum: "56c254cbb56ee01532869f9ea0b06cdea76a5e13e72bc996ce527be88c5a4b1b"
        )
    ]
)
