// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Chartboost-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "ChartboostAdapter", targets: ["ChartboostAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ChartBoost/chartboost-monetization-ios-sdk", exact: "9.14.1"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/chartboost-adapter/5.8.0/ISChartboostAdapter5.8.0.zip",
      checksum: "20b4f96520474e057256e47e73eaabf2fc996b6f78473fbb463726d084f8168f"
    )
  ]
)
