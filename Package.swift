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
            url: "https://github.com/avinashamanjha251/AJSensorHealthDataSDK/releases/download/1.0.12/AJSensorHealthData.xcframework.zip",
            checksum: "3514cf81695b6500200bf41bf138b4a80f769c21cbf324e18ea709cd7a53ca0f"
        )
    ]
)
