
# HtmlMarkdown for Swift
This library is an attempt to allow for easy HTML to markdown conversion. 

**Note**: Naturally not all HTML can be converted to markdown. This library simply attempts to _reverse_ the conversion done by [this library](https://github.com/caching-guru/SwiftMarkdownHtml). (the reason is we need markdown in XML/HTML for conversions and then convert it back)

## HTML / XML // Who cares?
We all know that HTML is really XML .. or should be. Kind of. Anyways, it works for both and we are using an XML parser to parse the HTML. So that's why we use both names, for many reasons it will work with either just fine.

## Concepts & Usage

It's built as a `string` extension to allow for easy conversions:
```swift
let html = "<strong>something</strong>".renderXMLToMarkdown()
```

## Config
There is no config yet as markdown is much simpler than HTML. This might come in the future.

## License
MIT

## Development
This package is not fully tested or developed yet. Partially because the underlying library from Apple is not fully released yet either. But this may be a great starting point for your own implementation.

## Usage
This package is used by [caching.guru](https://caching.guru) in production.
