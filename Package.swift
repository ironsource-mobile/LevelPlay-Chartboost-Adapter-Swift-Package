// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Chartboost-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "ChartboostAdapter", targets: ["ChartboostAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ChartBoost/chartboost-monetization-ios-sdk", exact: "9.14.0"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "ChartboostAdapter",
      dependencies: [
        "ChartboostAdapterSDK",
        .product(name: "ChartboostSDK", package: "chartboost-monetization-ios-sdk"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "ChartboostAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/chartboost-adapter/5.7.0/ISChartboostAdapter5.7.0.zip",
      checksum: "6cb9d0d7a5c01debe43660b6dc34b009e74509e7a37675cae75022cf5e4a539f"
    )
  ]
)
