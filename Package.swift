// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

 // ref. https://github.com/CocoaPods/Specs/blob/456b98842022e9a2379bf72529d1ed3050ef8020/Specs/5/9/a/Google-Mobile-Ads-SDK/8.11.0/Google-Mobile-Ads-SDK.podspec.json

import PackageDescription

let package = Package(
    name: "MyGoogleMobileAds-SPM",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "GoogleMobileAds",
            targets: ["GoogleMobileAdsTarget"]),
    ],
    dependencies: [
        .package(name: "GoogleAppMeasurement", url: "https://github.com/google/GoogleAppMeasurement.git", .upToNextMajor(from: "8.8.0"))
    ],
    targets: [
        .target(name: "GoogleMobileAdsTarget",
                dependencies: [
                    .target(name: "GoogleMobileAds"),
                    .product(name: "GoogleAppMeasurement", package: "GoogleAppMeasurement"),
                ],
                path: "Sources",
                linkerSettings: [
                    .linkedFramework("AudioToolbox"),
                    .linkedFramework("AVFoundation"),
                    .linkedFramework("CFNetwork"),
                    .linkedFramework("CoreGraphics"),
                    .linkedFramework("CoreMedia"),
                    .linkedFramework("CoreTelephony"),
                    .linkedFramework("CoreVideo"),
                    .linkedFramework("MediaPlayer"),
                    .linkedFramework("MessageUI"),
                    .linkedFramework("MobileCoreServices"),
                    .linkedFramework("QuartzCore"),
                    .linkedFramework("Security"),
                    .linkedFramework("StoreKit"),
                    .linkedFramework("SystemConfiguration"),
                    .linkedLibrary("z"),
                    .linkedLibrary("sqlite3")
                ]),
        .binaryTarget(
            name: "GoogleMobileAds",
            path: "Binary/GoogleMobileAds.xcframework"),
//        .binaryTarget(name: "GoogleMobileAdsBinary",
//                      url: "",
//                      checksum: "),
    ]
)
