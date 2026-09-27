// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Chartboost-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "ChartboostAdapter", targets: ["ChartboostAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ChartBoost/chartboost-monetization-ios-sdk", exact: "9.14.2"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/chartboost-adapter/5.9.0/ISChartboostAdapter5.9.0.zip",
      checksum: "3ffed8e3132abec5812b2931c0219cc0a7dedade942d3bcc7e650d00caad937b"
    )
  ]
)
