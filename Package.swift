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
            url: "https://github.com/avinashamanjha251/AJSensorHealthDataSDK/releases/download/1.0.3/AJSensorHealthData.xcframework.zip",
            checksum: "0bb4a4cdc5f517f8720e279f7bb0ed792a15fc103e569bf4af9ad99224030fc9"
        )
    ]
)
