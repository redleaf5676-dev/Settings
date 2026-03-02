// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Settings",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .executable(
            name: "Settings",
            targets: ["Settings"]
        )
    ],
    targets: [
        .executableTarget(
            name: "Settings",
            path: "Sources/Settings",
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit")
            ]
        )
    ]
)