// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXFlexLayout",
	platforms: [.iOS("12.0")],
	products: [
		.library(
			name: "GXFlexLayout",
			targets: ["GXFlexLayoutWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.2.1"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.2.1")
	],
	targets: [
		.target(name: "GXFlexLayoutWrapper",
				dependencies: [
					"GXFlexLayout",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS])),
					.product(name: "GXObjectsModel", package: "GXObjectsModel", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXFlexLayout",
			url: "https://pkgs.genexus.dev/iOS/releases/GXFlexLayout-1.2.1.xcframework.zip",
			checksum: "cbfc6fba8a056a2162132d2c5d6c8ff3f4e8c2f9b0dc8c9dd318127788f5d332"
		)
	]
)