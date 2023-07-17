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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.0.0-beta.20230717155910"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.0.0-beta.20230717155910")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXFlexLayout-1.0.0-beta.20230717155910.xcframework.zip",
			checksum: "8a47a8d575d78073233a2eb41a0a09f343a2d0bdea4a121fa8162b46c3d4511b"
		)
	]
)