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
            checksum: "4ca9836c8567f79ba8f8cb47dcd29af643c092ea845ef54f3a635560e3bae3d0"
        )
    ]
)
