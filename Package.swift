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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.3.0-beta.11"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.3.0-beta.11")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXFlexLayout-1.3.0-beta.11.xcframework.zip",
			checksum: "33ca79f8bce73f710021cdb4176a649f48e19be99af69dccaf3f51241e380ec3"
		)
	]
)