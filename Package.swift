// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "SwiftHtmlMarkdown",
    products: [
        .library(name: "HtmlMarkdown", targets: ["HtmlMarkdown"])
    ],
    dependencies: [
        .package(url: "https://github.com/scinfu/SwiftSoup.git", from: "2.5.3"),
    ],
    targets: [
        .target(name: "HtmlMarkdown", dependencies: [
                    .product(name: "SwiftSoup", package: "SwiftSoup"),
                ], path: "Sources"),
        .testTarget(name: "HtmlMarkdownTests", dependencies: ["HtmlMarkdown"])
    ]
)
