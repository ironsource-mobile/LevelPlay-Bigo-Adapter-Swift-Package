// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Bigo-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "BigoAdapter", targets: ["BigoAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/bigo-ads/BigoADS-Swift-Package", exact: "6.2.0"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "BigoAdapter",
      dependencies: [
        "BigoAdapterSDK",
        .product(name: "BigoADS", package: "BigoADS-Swift-Package"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "BigoAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/bigo-adapter/5.13.0/ISBigoAdapter5.13.0.zip",
      checksum: "fc85d731528310c8a3ff1ee7d2941923a2a06ce4eba9df63d1f3abe653699604"
    )
  ]
)
