// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let platformTargets: [Target] = [
    .target(name: "SwiftPlot"),
    
    .target(
        name: "SVGRenderer",
        dependencies: ["SwiftPlot"]),
    .target(
        name: "QuartzRenderer",
        dependencies: ["SwiftPlot"]),
    
    .testTarget(
      name: "SwiftPlotTests",
      dependencies: ["SVGRenderer", "QuartzRenderer", "SwiftPlot"])
]

let platformProducts: [Product] =  [
  .library(name: "SwiftPlot", targets: ["SwiftPlot"]),
  .library(name: "SVGRenderer", targets: ["SVGRenderer"]),
  .library(name: "QuartzRenderer", targets: ["QuartzRenderer"])
]

let package = Package(
    name: "SwiftPlot",
    products: platformProducts,
    targets: platformTargets,
    cxxLanguageStandard: .cxx11
)
