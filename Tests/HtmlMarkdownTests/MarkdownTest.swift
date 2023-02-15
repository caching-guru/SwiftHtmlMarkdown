//
//  MarkdownTest.swift
//  MarkdownHtml
//
//  Created by Ralph Kuepper on 02/15/23.
//  Copyright © 2023 Ralph Kuepper. All rights reserved.
//

import XCTest
@testable import HtmlMarkdown

class MarkdownTest: XCTestCase {

    func testLists() {
        let html = """
            <ol>
                <li>
                    <p>First ordered list item</p>
                </li>
                <li>
                    <p>Another item<br />⋅⋅* Unordered sub-list.</p>
                </li>
                <li>
                    <p>Actual numbers don’t matter, just that it’s a number<br />⋅⋅1. Ordered sub-list</p>
                </li>
                <li>
                    <p>And another item.</p>
                </li>
            </ol>
        """
        let result = """
         1.  First ordered list item
          2.  Another item
         ⋅⋅* Unordered sub-list.
          3.  Actual numbers don’t matter, just that it’s a number
         ⋅⋅1. Ordered sub-list
          4.  And another item.
         """.trimmingCharacters(in: .whitespacesAndNewlines)
        let md = html.renderXMLToMarkdown().trimmingCharacters(in: .whitespacesAndNewlines)
        XCTAssertEqual(result, md)
    }

    func testHeadlines() {
        XCTAssertEqual("<h1>h1 headline</h1>".renderXMLToMarkdown(), "# h1 headline")
        XCTAssertEqual("<h2>h2 headline</h2>".renderXMLToMarkdown(), "## h2 headline")
        XCTAssertEqual("<h3>h3 headline</h3>".renderXMLToMarkdown(), "### h3 headline")
        XCTAssertEqual("<h4>h4 headline</h4>".renderXMLToMarkdown(), "#### h4 headline")
        XCTAssertEqual("<h5>h5 headline</h5>".renderXMLToMarkdown(), "##### h5 headline")
        XCTAssertEqual("<h6>h6 headline</h6>".renderXMLToMarkdown(), "###### h6 headline")
    }
    
    func testTable() {
        let tableHtml = """
        <table>
            <thead>
                <tr><td>Left-aligned</td>
                <td>Center-aligned</td>
                <td>Right-aligned</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>git status</td>
                    <td>git status</td>
                    <td>git status</td>
                </tr>
                <tr>
                    <td>git diff</td>
                    <td>git diff</td>
                    <td>git diff</td>
                </tr>
            </tbody>
        </table>
        """
        let mockMd = """
        | Left-aligned | Center-aligned | Right-aligned |
        | ------------ | -------------- | ------------- |
        | git status   | git status     | git status    |
        | git diff     | git diff       | git diff      |
        
        """.trimmingCharacters(in: [" "])
        let md = tableHtml.renderXMLToMarkdown().trimmingCharacters(in: [" "])
        XCTAssertEqual(md, mockMd)
    }
    
    func testBigHtml() {
        let html = """
    <h1>h1 Heading 8-)</h1>
    <h2>h2 Heading</h2>
    <h3>h3 Heading</h3>
    <h4>h4 Heading</h4>
    <h5>h5 Heading</h5>
    <h6>h6 Heading</h6>
    <p>Alternatively, for H1 and H2, an underline-ish style:</p>
    <h1>Alt-H1</h1>
    <h2>Alt-H2</h2>
    <p>Emphasis, aka italics, with <i>asterisks</i> or <i>underscores</i>.</p>
    <p>Strong emphasis, aka bold, with <strong>asterisks</strong> or <strong>underscores</strong>.</p>
    <p>Combined emphasis with <strong>asterisks and <i>underscores</i></strong>.</p>
    <p>Strikethrough uses two tildes. <s>Scratch this.</s></p>
    <p><strong>This is bold text</strong></p>
    <p><strong>This is bold text</strong></p>
    <p><i>This is italic text</i></p>
    <p><i>This is italic text</i></p>
    <p><s>Strikethrough</s></p>
    <ol>
        <li>
            <p>First ordered list item</p>
        </li>
        <li>
            <p>Another item<br />⋅⋅* Unordered sub-list.</p>
        </li>
        <li>
            <p>Actual numbers don’t matter, just that it’s a number<br />⋅⋅1. Ordered sub-list</p>
        </li>
        <li>
            <p>And another item.</p>
        </li>
    </ol>
    <p>⋅⋅⋅You can have properly indented paragraphs within list items. Notice the blank line above, and the leading spaces
        (at least one, but we’ll use three here to also align the raw Markdown).</p>
    <p>⋅⋅⋅To have a line break without a paragraph, you will need to use two trailing spaces.⋅⋅<br />⋅⋅⋅Note that this line
        is separate, but within the same paragraph.⋅⋅<br />⋅⋅⋅(This is contrary to the typical GFM line break behaviour,
        where trailing spaces are not required.)</p>
    <ul>
        <li>
            <p>Unordered list can use asterisks</p>
        </li>
    </ul>
    <ul>
        <li>
            <p>Or minuses</p>
        </li>
    </ul>
    <ul>
        <li>
            <p>Or pluses</p>
        </li>
    </ul>
    <ol>
        <li>
            <p>Make my changes</p>
            <ol>
                <li>
                    <p>Fix bug</p>
                </li>
                <li>
                    <p>Improve formatting</p>
                    <ul>
                        <li>
                            <p>Make the headings bigger</p>
                        </li>
                    </ul>
                </li>
            </ol>
        </li>
        <li>
            <p>Push my commits to GitHub</p>
        </li>
        <li>
            <p>Open a pull request</p>
            <ul>
                <li>
                    <p>Describe my changes</p>
                </li>
                <li>
                    <p>Mention all the members of my team</p>
                    <ul>
                        <li>
                            <p>Ask for feedback</p>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ol>
    <ul>
        <li>
            <p>Create a list by starting a line with <code class="language-javascript"></code>, <code
                    class="language-javascript"></code>, or <code class="language-javascript"></code></p>
        </li>
        <li>
            <p>Sub-lists are made by indenting 2 spaces:</p>
            <ul>
                <li>
                    <p>Marker character change forces new list start:</p>
                    <ul>
                        <li>
                            <p>Ac tristique libero volutpat at</p>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <p>Facilisis in pretium nisl aliquet</p>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <p>Nulla volutpat aliquam velit</p>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <p>Very easy!</p>
        </li>
    </ul>
    <ul>
        <li>
            <p>Finish my changes</p>
        </li>
        <li>
            <p>Push my commits to GitHub</p>
        </li>
        <li>
            <p>Open a pull request</p>
        </li>
        <li>
            <p>@mentions, #refs, <a href="">links</a>, <strong>formatting</strong>, and <htmltag><del>tags</del><htmltag>
                    supported</p>
        </li>
        <li>
            <p>list syntax required (any unordered or ordered list supported)</p>
        </li>
        <li>
            <p>this is a complete item</p>
        </li>
        <li>
            <p>this is an incomplete item</p>
        </li>
    </ul>
    <p><a href="https://www.google.com">I’m an inline-style link</a></p>
    <p><a href="https://www.google.com">I’m an inline-style link with title</a></p>
    <p><a href="https://www.mozilla.org">I’m a reference-style link</a></p>
    <p><a href="../blob/master/LICENSE">I’m a relative reference to a repository file</a></p>
    <p><a href="http://slashdot.org">You can use numbers for reference-style link definitions</a></p>
    <p>Or leave it empty and use the <a href="http://www.reddit.com">link text itself</a>.</p>
    <p>URLs and URLs in angle brackets will automatically get turned into links.<br />http://www.example.com or <a
            href="http://www.example.com">http://www.example.com</a> and sometimes<br />example.com (but not on Github, for
        example).</p>
    <p>Some text to show that the reference links can follow later.</p>
    <p>Here’s our logo (hover to see the title text):</p>
    <p>Inline-style:<br /><img src="https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png"
            title="Logo Title Text 1" /></p>
    <p>Reference-style:<br /><img src="https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png"
            title="Logo Title Text 2" /></p>
    <p><img src="https://octodex.github.com/images/minion.png" title="" /><br /><img
            src="https://octodex.github.com/images/stormtroopocat.jpg" title="The Stormtroopocat" /></p>
    <p>Like links, Images also have a footnote style syntax</p>
    <p><img alt="some alt texyt" src="https://octodex.github.com/images/dojocat.jpg" title="The Dojocat" /></p>
    <p>With a reference later in the document defining the URL location:</p>
    <p>Footnote 1 link[^first].</p>
    <p>Footnote 2 link[^second].</p>
    <p>Inline footnote^[Text of inline footnote] definition.</p>
    <p>Duplicated footnote reference[^second].</p>
    <p>[^first]: Footnote <strong>can have markup</strong></p>
    <pre><code class="language-nil"><p>and multiple paragraphs.</p></code></pre>
    <p>[^second]: Footnote text.</p>
    <p>Colons can be used to align columns.</p>
    <table>
        <thead>
            <td>Tables</td>
            <td>Are</td>
            <td>Cool</td>
        </thead>
        <tbody>
            <tr>
                <td>col 3 is</td>
                <td>right-aligned</td>
                <td>$1600</td>
            </tr>
            <tr>
                <td>col 2 is</td>
                <td>centered</td>
                <td>$12</td>
            </tr>
            <tr>
                <td>zebra stripes</td>
                <td>are neat</td>
                <td>$1</td>
            </tr>
        </tbody>
    </table>
    <p>There must be at least 3 dashes separating each header cell.<br />The outer pipes (|) are optional, and you don’t
        need to make the<br />raw Markdown line up prettily. You can also use inline Markdown.</p>
    <table>
        <thead>
            <td>Markdown</td>
            <td>Less</td>
            <td>Pretty</td>
        </thead>
        <tbody>
            <tr>
                <td><i>Still</i></td>
                <td><code class="language-javascript"></code></td>
                <td><strong>nicely</strong></td>
            </tr>
            <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
            </tr>
        </tbody>
    </table>
    <table>
        <thead>
            <td>First Header</td>
            <td>Second Header</td>
        </thead>
        <tbody>
            <tr>
                <td>Content Cell</td>
                <td>Content Cell</td>
            </tr>
            <tr>
                <td>Content Cell</td>
                <td>Content Cell</td>
            </tr>
        </tbody>
    </table>
    <table>
        <thead>
            <td>Command</td>
            <td>Description</td>
        </thead>
        <tbody>
            <tr>
                <td>git status</td>
                <td>List all new or modified files</td>
            </tr>
            <tr>
                <td>git diff</td>
                <td>Show file differences that haven’t been staged</td>
            </tr>
        </tbody>
    </table>
    <table>
        <thead>
            <td>Command</td>
            <td>Description</td>
        </thead>
        <tbody>
            <tr>
                <td><code class="language-javascript"></code></td>
                <td>List all <i>new or modified</i> files</td>
            </tr>
            <tr>
                <td><code class="language-javascript"></code></td>
                <td>Show file differences that <strong>haven’t been</strong> staged</td>
            </tr>
        </tbody>
    </table>
    <table>
        <thead>
            <td>Left-aligned</td>
            <td>Center-aligned</td>
            <td>Right-aligned</td>
        </thead>
        <tbody>
            <tr>
                <td>git status</td>
                <td>git status</td>
                <td>git status</td>
            </tr>
            <tr>
                <td>git diff</td>
                <td>git diff</td>
                <td>git diff</td>
            </tr>
        </tbody>
    </table>
    <table>
        <thead>
            <td>Name</td>
            <td>Character</td>
        </thead>
        <tbody>
            <tr>
                <td>Backtick</td>
                <td>`</td>
            </tr>
        </tbody>
    </table>
    <blockquote>
        <p>Blockquotes are very handy in email to emulate reply text.<br />This line is part of the same quote.</p>
    </blockquote>
    <p>Quote break.</p>
    <blockquote>
        <p>This is a very long line that will still be quoted properly when it wraps. Oh boy let’s keep writing to make sure
            this is long enough to actually wrap for everyone. Oh, you can <i>put</i> <strong>Markdown</strong> into a
            blockquote.</p>
    </blockquote>
    <blockquote>
        <p>Blockquotes can also be nested…</p>
        <blockquote>
            <p>…by using additional greater-than signs right next to each other…</p>
            <blockquote>
                <p>…or with spaces between arrows.</p>
            </blockquote>
        </blockquote>
    </blockquote>
    <pre><code class="language-javascript"><p>console.log(“this is now english but should also stay english”);</p></code></pre>
    <p><code class="language-javascript"></code></p>
    <p>Three or more…</p>
    <hr />
    <p>Hyphens</p>
    <hr />
    <p>Asterisks</p>
    <hr />
    <p>Underscores</p>
    <p><a href="http://www.youtube.com/watch?v=YOUTUBE_VIDEO_ID_HERE"><img
                src="http://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg" title="" /></a></p>
    <p>Finish</p>
"""
        let markdown = html.renderXMLToMarkdown()
        // no check here, we mainly want to make sure all standards are covered
        print("markdown: ", markdown)
    }

}

