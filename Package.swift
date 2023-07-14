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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.0.0-preview.20230714192150"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.0.0-preview.20230714192150")
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
			url: "https://pkgs.genexus.dev/iOS/preview/GXFlexLayout-1.0.0-preview.20230714192150.xcframework.zip",
			checksum: "2ea4d5d94f37e583d41b61e9c3c9cb5d1f470b728ca8a1b958e1ed2defad3466"
		)
	]
)