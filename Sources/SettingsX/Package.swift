// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SettingsX",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .executable(name: "SettingsX", targets: ["SettingsX"])
    ],
    targets: [
        .executableTarget(
            name: "SettingsX",
            path: "Sources/SettingsX",
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit")
            ]
        )
    ]
)