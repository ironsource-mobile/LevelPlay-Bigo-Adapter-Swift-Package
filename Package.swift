// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Bigo-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "BigoAdapter", targets: ["BigoAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/bigo-ads/BigoADS-Swift-Package", exact: "6.1.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/bigo-adapter/5.12.0/ISBigoAdapter5.12.0.zip",
      checksum: "137bf8ce278c964eaa98d0a6213d116818a1eeceb48774b61ccf568c588261db"
    )
  ]
)
