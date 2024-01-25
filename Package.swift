// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "SwiftMarkdownBuilder",

  platforms: [
    .macOS(.v10_15), .iOS(.v13)
  ],
  
  products: [
      .library(name: "MarkdownBuilder", targets: [ "MarkdownBuilder" ])
  ],
  
  dependencies: [
      .package(url: "https://github.com/apple/swift-markdown.git", 
               .branch("main")),
      .package(
          url: "https://github.com/WilhelmOks/ArrayBuilder",
          .upToNextMajor(from: "1.0.0")
      ),
  ],
  
  targets: [
      .target(name: "MarkdownBuilder", dependencies: [ 
        .product(name: "Markdown", package: "swift-markdown"),
        .product(name: "ArrayBuilderModule", package: "ArrayBuilder")
      ]),
      
      .testTarget(name: "MarkdownBuilderTests", dependencies: [ 
        "MarkdownBuilder",
        .product(name: "Markdown", package: "swift-markdown") 
      ])
  ]
)

