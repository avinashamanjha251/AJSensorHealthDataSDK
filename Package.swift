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
            checksum: "0d99cc49d85f755558f001a22ee4a335a57381fcadb7ff0f78d6ba30048c0dc8"
        )
    ]
)
