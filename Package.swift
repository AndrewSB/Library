import PackageDescription

let package = Package(
    name: "Library",
    targets: [
        Target(name: "Library"),
        Target(name: "RxLibrary")
    ],
    dependencies: [
        .Package(url: "https://github.com/ReactiveX/RxSwift.git", majorVersion: 3)
    ],
    exclude: [
        "Carthage/",
        "Info.plist",
        "Library.xcodeproj",
        "README.md"
    ]
)
