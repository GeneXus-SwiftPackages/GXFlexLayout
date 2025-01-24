// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXFlexLayout",
	platforms: [.iOS("15.0")],
	products: [
		.library(
			name: "GXFlexLayout",
			targets: ["GXFlexLayoutWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.0.0-beta.11"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "3.0.0-beta.11")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXFlexLayout-3.0.0-beta.11.xcframework.zip",
			checksum: "b33d5685cb1534afdcb1a3988d2ac484c2c7ef0f4ed857ab376fa56849f2b986"
		)
	]
)