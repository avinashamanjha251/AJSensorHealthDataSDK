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
            url: "https://github.com/avinashamanjha251/AJSensorHealthDataSDK/releases/download/1.0.10/AJSensorHealthData.xcframework.zip",
            checksum: "df9957798aa0737a871021732f2cc84b42be4b59b53374e9a9b456a81c29b7ed"
        )
    ]
)
