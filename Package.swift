// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "RealmBinaryPackage",
    products: [
        .library(
            name: "BinaryRealm",
            targets: ["BinaryRealmTarget"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "BinaryRealmTarget",
            dependencies: [
                .target(name: "Realm"),
                .target(name: "RealmSwift")
            ],
        .binaryTarget(
            name: "Realm",
            url: "https://github.com/lisb/realm-swift/releases/download/binary_20.0.3/Realm.xcframework.zip",
            checksum: "a9cd660bcd561d8b03d82460a24baec35c347907a0fad5b53a59b1fe47468cb1"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/lisb/realm-swift/releases/download/binary_20.0.3/RealmSwift.xcframework.zip",
            checksum: "54c557edc566c190dfeae5fe0668ac08e50dfe051120cc8c409d511cdbd8ad68"
        )
    ]
)
