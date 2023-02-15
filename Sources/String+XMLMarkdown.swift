//
//  String+XMLMarkdown.swift
//  
//
//  Created by Ralph Küpper on 2/15/23.
//

import Foundation
import SwiftSoup

public enum XMLMarkdownError: Error {
    case invalidElement(String)
}

public extension String {
    func renderXMLToMarkdown() -> String {
        do {
            let doc: SwiftSoup.Document = try SwiftSoup.parse(self)
            var markdown = ""
            let els =  doc.getChildNodes()
            for e in els {
                
                markdown = markdown + (try self.renderChildNode(e))
            }
            return markdown.trimmingCharacters(in: .whitespacesAndNewlines)
        } catch Exception.Error(let type, let message) {
            print(message)
        } catch {
            print("error: ", error)
        }
        return ""
    }
    func renderTableColumn(_ node: Node, index: Int, columnWidths:[Int]) throws -> String {
        let name = node.nodeName()
        if name != "td" {
            throw XMLMarkdownError.invalidElement("expected td but got \(name)")
        }
        var r = ""
        for n in node.getChildNodes() {
            
            r = r + (try self.renderChildNode(n))
        }
        let desiredLength = columnWidths[index]
        while r.count < desiredLength {
            r = r + " "
        }
        return " " + r + " |"
    }
    func renderTableSeperatorRow(columnWidths:[Int]) throws -> String {
        
        var r = "|";
        for index in 0..<columnWidths.count {
            var filler = ""
            for _ in 0..<columnWidths[index] {
                filler = filler + "-"
            }
            r = r + " \(filler) |"
            
        }
        return r + "\n"
    }
    func renderTableRow(_ node: Node, columnWidths:[Int]) throws -> String {
        let name = node.nodeName()
        if name != "tr" {
            throw XMLMarkdownError.invalidElement("expected tr but got \(name)")
        }
        var r = "|";
        var index = 0
        for n in node.getChildNodes() {
            if n.nodeName() == "td" {
                r = r + (try self.renderTableColumn(n, index: index, columnWidths:columnWidths))
                index = index + 1
            }
        }
        return r + "\n"
    }
    func renderTableHead(_ node: Node, columnWidths:[Int]) throws -> String {
        var r = ""
        for e in node.getChildNodes() {
            if e.nodeName() == "tr" {
                r = r + (try self.renderTableRow(e, columnWidths: columnWidths))
            }
        }
        r = r + (try self.renderTableSeperatorRow(columnWidths: columnWidths))
        return r
    }
    func renderTableFood(_ node: Node, columnWidths:[Int]) throws -> String {
        var r = try self.renderTableSeperatorRow(columnWidths: columnWidths)
        for e in node.getChildNodes() {
            if e.nodeName() == "tr" {
                r = r + (try self.renderTableRow(e, columnWidths: columnWidths))
            }
        }
        return r
    }
    
    func renderTable(_ node: Node) throws -> String {
        
        var r = ""
        var columnWidths:[Int] = []
        var rows:[Node] = []
        for n in node.getChildNodes() {
            if n.nodeName() == "thead" {
                for n2 in n.getChildNodes() {
                    if n2.nodeName() == "tr" {
                        rows.append(n2)
                    }
                }
                
            }
            else if n.nodeName() == "tbody" {
                for n2 in n.getChildNodes() {
                    if n2.nodeName() == "tr" {
                        rows.append(n2)
                    }
                }
            }
            else if n.nodeName() == "tfood", let row = n.getChildNodes().first {
                for n2 in n.getChildNodes() {
                    if n2.nodeName() == "tr" {
                        rows.append(n2)
                    }
                }
            }
            else if n.nodeName() == "tr" {
                rows.append(n)
            }
        }
        for row in rows {
            var i = 0
            for td in row.getChildNodes() {
                if td.nodeName() == "td" {
                    let l = (try self.renderChildNode(td)).count
                    if columnWidths.count <= i {
                        columnWidths.append(0)
                    }
                    if l > columnWidths[i] {
                        columnWidths[i] = l
                    }
                    i = i + 1
                }
            }
        }
        for n in node.getChildNodes() {
            if n.nodeName() == "thead" {
                
                r = r + (try self.renderTableHead(n, columnWidths: columnWidths))
            }
            else if n.nodeName() == "tbody" {
                for n2 in n.getChildNodes() {
                    if n2.nodeName() == "tr" {
                        r = r + (try self.renderTableRow(n2, columnWidths: columnWidths))
                    }
                }
            }
            else if n.nodeName() == "tfood" {
                
                
                r = r + (try self.renderTableFood(n, columnWidths: columnWidths))
            }
            else if n.nodeName() == "tr" {
                r = r + (try self.renderTableRow(n, columnWidths: columnWidths))
                
            }
        }
        return r
    }
    func renderChildNode(_ node: SwiftSoup.Node, counter: Int = 0, throwError: Bool = true) throws -> String {
        let name = node.nodeName()
        
        var r = ""
        var counter1 = counter
        if ["html", "head", "body"].contains(name) {
            
        }
        else if name == "h1" {
            r = r + "# "
        }
        else if name == "h2" {
            r = r + "## "
        }
        else if name == "h3" {
            r = r + "### "
        }
        else if name == "h4" {
            r = r + "#### "
        }
        else if name == "h5" {
            r = r + "##### "
        }
        else if name == "h5" {
            r = r + "##### "
        }
        else if name == "h6" {
            r = r + "###### "
        }
        else if name == "i" {
            r = r + "_"
        }
        else if name == "s" {
            r = r + "~~"
        }
        else if name == "strong" {
            r = r + "**"
        }
        else if name == "p" {
            r = r + ""
        }
        else if name == "br" {
            r = r + "\n"
        }
        else if name == "code" {
            var language = ""
            if let c = node.getAttributes()?.get(key: "class") {
                let classes = c.split(separator: " ")
                for cl in classes {
                    if cl.prefix(9) == "language-" {
                        language = cl.substring(from: cl.index(cl.startIndex, offsetBy: 9))
                    }
                }
            }
            r = r + "```\(language)\n"
            let accum: StringBuilder = StringBuilder()
            for node in node.getChildNodes() {
                try node.outerHtml(accum)
            }
            return r + accum.toString() + "```\n\n"
        }
        else if name == "ol" {
            counter1 = 1
            for cn in node.getChildNodes() {
                if cn.nodeName() == "li" {
                    r = r + (try renderChildNode(cn, counter: counter1))
                    counter1 = counter1 + 1
                }
            }
            return r
        }
        else if name == "ul" {
            for cn in node.getChildNodes() {
                counter1 = 0
                if cn.nodeName() == "li" {
                    r = r + (try renderChildNode(cn, counter: counter1))
                }
            }
            return r
        }
        else if name == "table" {
            return r + (try self.renderTable(node))
        }
        else if name == "img" {
            if let src = node.getAttributes()?.get(key: "src") {
                let alt = node.getAttributes()?.get(key: "alt") ?? ""
                var title = node.getAttributes()?.get(key: "title") ?? ""
                if title != "" {
                    title = " \"\(title)\""
                }
                r = r + "![\(alt)](\(src)\(title))"
            }
            // img's don't have children :)
            return r
            

        }
        else if name == "a" {
            
            r = r + "["
        }
        else if name == "pre" {
            // now we expect "code" next, or at least prepare of it
            
        }
        else if name == "hr" {
            r = r + "\n---\n"
        }
        else if name == "blockquote" {
            var renderedBlock = ""
            for cn in node.getChildNodes() {
                renderedBlock = renderedBlock + (try renderChildNode(cn, counter: counter1))
            }
            renderedBlock = "> " + renderedBlock.replacingOccurrences(of: "\n", with: "\n> ")
            return renderedBlock
        }
        else if name == "htmltag" {
            for cn in node.getChildNodes() {
                r = r + (try renderChildNode(cn, counter: counter1, throwError: false))
            }
            return r
        }
        else if name == "li" {
            if counter1 > 0 {
                r = r + "\(counter1). "
            }
            else {
                r = r + "* "
            }
        }
        else if let t = node as? TextNode {
            r = r + t.text()
        }
        else if name == "td" {
            // nothing special
        }
        else {
            if throwError {
                // we are throwing here to make sure we don't get messed up HTML
                // this will also allow us to deliberately ignore errors if so desired
                throw XMLMarkdownError.invalidElement("\(name) is not known")
            }
        }
        
        
        for cn in node.getChildNodes() {
            r = r + (try renderChildNode(cn, counter: counter1))
        }
        
        if name == "p" {
            r = r + "\n\n"
        }
        else if name == "a" {
            if let href = node.getAttributes()?.get(key: "href") {
                r = r + "](\(href))"
            }
            else {
                r = r + "]"
            }
        }
        else if name == "h1" {
            r = r + "\n\n"
        }
        else if name == "h2" {
            r = r + "\n\n"
        }
        else if name == "h3" {
            r = r + "\n\n"
        }
        else if name == "h4" {
            r = r + "\n\n"
        }
        else if name == "h5" {
            r = r + "\n"
        }
        else if name == "h5" {
            r = r + "\n"
        }
        else if name == "h6" {
            r = r + "\n"
        }
        else if name == "i" {
            r = r + "_"
        }
        else if name == "strong" {
            r = r + "**"
        }
        else if name == "s" {
            r = r + "~~"
        }
        return r
    }
    
}

