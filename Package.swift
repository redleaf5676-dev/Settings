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
            targets: ["SettingsX"]   // ← Keep this matching folder name
        )
    ],
    targets: [
        .executableTarget(
            name: "SettingsX",       // ← Must match folder
            path: "Sources/SettingsX",
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit")
            ]
        )
    ]
)