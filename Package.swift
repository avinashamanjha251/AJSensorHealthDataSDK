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
            url: "https://github.com/avinashamanjha251/AJSensorHealthDataSDK/releases/download/1.0.4/AJSensorHealthData.xcframework.zip",
            checksum: "1b6f5f2355c2d13d678ea24809f2dbbee52cb5a882cd5cc4a5bdcefafe8a7343"
        )
    ]
)
