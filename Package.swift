// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Chartboost-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/chartboost-adapter/5.10.0/ISChartboostAdapter5.10.0.zip",
      checksum: "8d5784d3267eec11eb2f61853d1b94675c0a9ed1d0ed7b9506a05f2ba3dcc383"
    )
  ]
)
