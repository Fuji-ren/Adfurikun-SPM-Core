// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Adfurikun-SPM-Core",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdfurikunSDK", targets: ["AdfurikunSDKTarget"])
    ],
    targets: [
        .binaryTarget(
            name: "ADFMovieReward",
            url: "https://github.com/Fuji-ren/Adfurikun-SPM-Core/releases/download/4.5.0-alpha.5/ADFMovieReward.xcframework.zip",
            checksum: "ba1002b08c5ced36cb55ab3af2c724dda5bbf16c64d21d7db244c9adcda633d1"
        ),
        .target(
            name: "AdfurikunSDKTarget",
            dependencies: ["ADFMovieReward"],
            path: "Sources",
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedFramework("AdSupport"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("SafariServices"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit"),
            ]
        )
    ]
)
