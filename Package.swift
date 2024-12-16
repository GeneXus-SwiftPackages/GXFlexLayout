// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXFlexLayout",
	platforms: [.iOS("13.0")],
	products: [
		.library(
			name: "GXFlexLayout",
			targets: ["GXFlexLayoutWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.2.0-beta.24"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "2.2.0-beta.24")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXFlexLayout-2.2.0-beta.24.xcframework.zip",
			checksum: "6e4de56897eac44863fd56d379ba53d4b0318ad3d377034ca5604f37148e712d"
		)
	]
)