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
            checksum: "1dc9fa9c69ec1e17d6c38b47389d566a32b7a6b0fb86720732f62583c800a414"
        )
    ]
)
