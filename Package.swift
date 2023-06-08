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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", d60601ead23ef16bd8e55ba8bcf14734fe357b5e),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", a1e27a7a0817831e5e96518e9434564ef4a7bc97)
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXFlexLayout-1.0.0-beta+20230608211628.xcframework.zip",
			checksum: "ca5bffff6627a1704f64f1f90ad1cbeb5e93a133310bd3d9768c0204a054e2b9"
		)
	]
)