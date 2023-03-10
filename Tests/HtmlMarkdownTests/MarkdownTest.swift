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
    
    func testLong() {
        let xml = """
         <p>Suchmaschinenoptimierung (SEO) ist ein kritischer Aspekt der Website-Entwicklung und spielt eine entscheidende Rolle
           bei der Steigerung des organischen Verkehrs auf Ihre Website. Das Hauptziel von SEO ist es sicherzustellen, dass Ihre
           Website für relevante Keywords ganz oben auf den Ergebnisseiten von Suchmaschinen (SERPs) erscheint. Einer der
           wichtigsten Aspekte von SEO ist die Verwendung von Meta-Tags.</p>
         <p> Meta-Tags sind HTML-Tags, die Suchmaschinen und Webbenutzern Informationen über eine Webseite liefern. Sie spielen
           eine wichtige Rolle bei der Bestimmung der Relevanz Ihrer Website und ihres Rankings in Suchmaschinen.</p>
         <p> In diesem Artikel werden wir diskutieren, wie man SEO- und Meta-Tags in React-Websites implementiert. Wir beginnen
           mit der Erörterung der Bedeutung von SEO und Meta-Tags und erklären dann, wie Sie Meta-Tags mithilfe der
           React-Helmbibliothek zu Ihrer React-Website hinzufügen.</p>
         <h2> Bedeutung von SEO und Meta-Tags</h2>
         <p> SEO ist für den Erfolg jeder Website von entscheidender Bedeutung, und es ist wichtig, ihre Bedeutung zu verstehen,
           wenn Sie organischen Verkehr auf Ihre Website lenken möchten. Das Hauptziel von SEO ist es, die Sichtbarkeit Ihrer
           Website in Suchmaschinen zu verbessern und ihr Ranking in den SERPs zu erhöhen.</p>
         <p> Suchmaschinen verwenden verschiedene Algorithmen, um die Relevanz und Wichtigkeit einer Website zu bestimmen, und
           Meta-Tags spielen bei diesem Prozess eine wichtige Rolle. Sie liefern Informationen über den Inhalt Ihrer Website, wie
           z. B. Titel, Beschreibung und Schlüsselwörter, die Suchmaschinen verwenden, um ihre Relevanz zu bestimmen.</p>
         <p> Durch die Verwendung relevanter Meta-Tags können Sie Suchmaschinen helfen, den Inhalt Ihrer Website zu verstehen,
           was das Ranking in den SERPs verbessern kann. Darüber hinaus können Meta-Tags die Benutzererfahrung verbessern, indem
           sie eine kurze Beschreibung Ihrer Website bereitstellen, die den Benutzern bei der Entscheidung helfen kann, ob Ihre
           Website für ihre Suchanfrage relevant ist.</p>
         <h2> So fügen Sie Meta-Tags zu React-Websites hinzu</h2>
         <p> Um Ihrer React-Website Meta-Tags hinzuzufügen, müssen Sie eine Bibliothek namens React Helmet verwenden. React
           Helmet ist eine Bibliothek, mit der Sie den Dokumentkopfabschnitt in Ihrer React-Anwendung hinzufügen und verwalten
           können. Es ist einfach zu bedienen und bietet eine bequeme Möglichkeit, Meta-Tags zu Ihrer React-Website hinzuzufügen.
         </p>
         <p> Um mit React Helmet zu beginnen, müssen Sie es zuerst mit npm oder Garn installieren. Sobald Sie es installiert
           haben, können Sie es in Ihre React-Komponente importieren und damit Meta-Tags zu Ihrer Website hinzufügen.</p>
         <p> Hier ist ein Beispiel für die Verwendung von React Helmet zum Hinzufügen eines Titel- und Beschreibungs-Meta-Tags zu
           Ihrer React-Website:</p>
         <div class="notranslate" id="BLOCK-2"></div>
         <p> In diesem Beispiel haben wir die React-Helmbibliothek importiert und verwendet, um unserer Website einen Titel- und
           Beschreibungs-Meta-Tag hinzuzufügen. Der
         <div class="notranslate" id="BLOCK-5"></div> -Tag legt den Titel der Seite fest, der in der Titelleiste des Browsers
         angezeigt wird. Der<div class="notranslate" id="BLOCK-4"></div> -Tag legt die Beschreibung der Seite fest, die
         Suchmaschinen verwenden, um den Inhalt zusammenzufassen.</p>
         <h2> Schlüsselwort-Meta-Tag</h2>
         <p> Das Keyword-Meta-Tag wird verwendet, um eine Liste von Schlüsselwörtern bereitzustellen, die den Inhalt Ihrer
           Website beschreiben. Suchmaschinen verwenden diese Informationen, um die Relevanz Ihrer Website für bestimmte
           Schlüsselwörter zu bestimmen.<br /> Hier ist ein Beispiel für die Verwendung von React Helmet zum Hinzufügen eines
           Schlüsselwort-Meta-Tags zu Ihrer React-Website:</p>
         <div class="notranslate" id="BLOCK-1"></div>
         <p> In diesem Beispiel haben wir a hinzugefügt
         <div class="notranslate" id="BLOCK-3"></div> -Tag, um eine Liste von Schlüsselwörtern bereitzustellen, die den Inhalt
         unserer Website beschreiben. Es ist wichtig zu beachten, dass das Keyword-Meta-Tag weniger wichtig ist als früher und
         einige Suchmaschinen es möglicherweise ignorieren. Es ist jedoch immer noch eine gute Praxis, es aufzunehmen, und es
         kann dazu beitragen, die Relevanz Ihrer Website für bestimmte Schlüsselwörter zu verbessern.<br /> Meta-Tag für soziale
         Medien<br /> Wenn Sie Ihre Website auf Social Media teilen möchten, müssen Sie Meta-Tags hinzufügen, die Informationen
         über Ihre Website für Social Media-Plattformen bereitstellen. Diese Meta-Tags enthalten den Titel, die Beschreibung und
         das Bild, die verwendet werden, wenn Ihre Website in sozialen Medien geteilt wird.<br /> Hier ist ein Beispiel für die
         Verwendung von React Helmet zum Hinzufügen von Meta-Tags für soziale Medien zu Ihrer React-Website:</p>
         <div class="notranslate" id="BLOCK-0"></div>
         <p> In diesem Beispiel haben wir Meta-Tags für das Open-Graph-Protokoll (og:) hinzugefügt, die Social-Media-Plattformen
           verwenden, um Informationen über Ihre Website bereitzustellen. Das Tag og:title legt den Titel fest, der angezeigt
           wird, wenn Ihre Website in sozialen Medien geteilt wird. Das Tag og:description legt die Beschreibung fest, die
           angezeigt wird, und das Tag og:image legt das Bild fest, das angezeigt wird.</p>
         <h2> Abschluss</h2>
         <p> In diesem Artikel haben wir besprochen, wie man SEO- und Meta-Tags in React-Websites implementiert. Darüber hinaus
           haben wir die Bedeutung von SEO und Meta-Tags erklärt und erklärt, wie Sie Meta-Tags mithilfe der React-Helmbibliothek
           zu Ihrer React-Website hinzufügen. Mithilfe von Meta-Tags können Sie Suchmaschinen helfen, den Inhalt Ihrer Website zu
           verstehen und ihr Ranking in SERPs zu verbessern. Darüber hinaus können Meta-Tags die Benutzererfahrung verbessern,
           indem sie eine kurze Website-Beschreibung bereitstellen.</p>
         <p> Indem Sie die in diesem Artikel beschriebenen Schritte befolgen, können Sie die SEO Ihrer React-Website verbessern
           und mehr organischen Traffic auf Ihre Website ziehen. Denken Sie daran, dass SEO ein fortlaufender Prozess ist, und es
           ist wichtig, Ihre Website kontinuierlich zu überwachen und zu aktualisieren, um sicherzustellen, dass sie für
           Suchmaschinen optimiert ist.</p>
        """
        let converted = xml.renderXMLToMarkdown(.init(throwUnkownElement: .render))
        print("converted: \n", converted)
    }
    
    func testInlineCode() {
        XCTAssertEqual("hier:`false` is an line code", "hier:<code class=\"inline language-javascript\">false</code> is an line code".renderXMLToMarkdown())
    }
    func testArabCode() {
        let xml = """
         <p style=";text-align:right;direction:rtl">يعد تحسين <code class="notranslate language-javascript">Engine</code> البحث (SEO) أمرًا بالغ الأهمية لمواقع الويب التي تريد أن تكون مرئية على محركات البحث مثل Google و Bing و Yahoo. تعد العلامات الوصفية جزءًا مهمًا من استراتيجية تحسين محركات البحث وتزود محركات البحث بمعلومات حول موقع الويب. ومع ذلك ، فإن Angular ، وهو إطار JavaScript شائع لبناء تطبيقات الويب ، يمثل تحديات عند تنفيذ العلامات الوصفية.</p><p style=";text-align:right;direction:rtl"> ستناقش هذه المقالة كيفية جعل العلامات الوصفية لتحسين محركات البحث تعمل مع Angular. سنغطي أساسيات العلامات الوصفية ، ولماذا تعتبر ضرورية لتحسين محركات البحث ، وكيف تؤثر بنية Angular على تنفيذ العلامات الوصفية. بالإضافة إلى ذلك ، سوف نستكشف العديد من التقنيات والأدوات التي يمكن استخدامها للتغلب على التحديات التي تطرحها Angular والتأكد من أن العلامات الوصفية لموقع الويب الخاص بك تعمل على النحو الأمثل لتحسين محركات البحث.</p><h2 style=";text-align:right;direction:rtl"> لماذا تعتبر العلامات الوصفية مهمة لتحسين محركات البحث؟</h2><p style=";text-align:right;direction:rtl"> توفر العلامات الوصفية لمحركات البحث معلومات مهمة حول موقع الويب ، مثل العنوان والوصف والكلمات الرئيسية. تستخدم محركات البحث هذه المعلومات لتحديد مدى صلة موقع الويب باستعلام بحث المستخدم ولتحديد مكان وضع موقع الويب في صفحات نتائج محرك البحث (SERPs).</p><p style=";text-align:right;direction:rtl"> تعد علامات العنوان والوصف أهم علامتي تعريف لتحسين محركات البحث. يتم عرض علامة العنوان كعنوان لنتيجة محرك البحث ، وتوفر علامة الوصف ملخصًا لمحتوى موقع الويب. يجب أن تكون علامات العنوان والوصف فريدة لكل صفحة على موقع الويب وتعكس بدقة محتوى تلك الصفحة.</p><p style=";text-align:right;direction:rtl"> بينما أقل أهمية من مرة ، لا تزال الكلمات الرئيسية تلعب دورًا في تحسين محركات البحث. توفر العلامة الوصفية للكلمات الرئيسية قائمة بالكلمات والعبارات المتعلقة بمحتوى موقع الويب. تستخدم محركات البحث هذه الكلمات الرئيسية لتحديد مدى صلة موقع الويب باستعلام بحث المستخدم.</p><h2 style=";text-align:right;direction:rtl"> كيف يؤثر Angular في تنفيذ العلامات الوصفية</h2><p style=";text-align:right;direction:rtl"> تؤثر بنية Angular في تنفيذ العلامات الوصفية بعدة طرق. أولاً ، يستخدم Angular العرض من جانب العميل ، مما يعني أن HTML لموقع الويب يتم إنشاؤه ديناميكيًا على جانب العميل بدلاً من إنشاؤه على الخادم ثم إرساله إلى العميل. هذا يعني أن محركات البحث لا يمكنها الزحف إلى HTML لموقع Angular كما هو الحال مع موقع ويب تقليدي معروض من جانب الخادم.</p><p style=";text-align:right;direction:rtl"> ثانيًا ، يعني استخدام Angular للتطبيقات أحادية الصفحة (SPAs) أن HTML لموقع الويب يتم تحديثه ديناميكيًا حيث يتفاعل المستخدم مع موقع الويب بدلاً من إعادة تحميله في كل مرة ينتقل فيها المستخدم إلى صفحة جديدة. هذا يجعل من الصعب على محركات البحث الزحف إلى HTML لموقع Angular على الويب ، لأنها تحتاج إلى تحديد متى يتم تحميل صفحة جديدة بسرعة.</p><p style=";text-align:right;direction:rtl"> أخيرًا ، استخدام Angular للتوجيه للتعامل مع التنقل بين الصفحات يعني أن عنوان URL لموقع الويب لا يتغير عندما ينتقل المستخدم إلى صفحة جديدة. قد يجعل ذلك من الصعب على محركات البحث فهم بنية موقع Angular وتحديد مدى صلة كل صفحة باستعلام بحث المستخدم.</p><h2 style=";text-align:right;direction:rtl"> تقنيات تنفيذ العلامات الوصفية في Angular</h2><p style=";text-align:right;direction:rtl"> هناك العديد من التقنيات التي يمكن استخدامها لتنفيذ العلامات الوصفية في Angular. تتراوح هذه التقنيات من استخدام ميزات Angular المضمنة إلى استخدام مكتبات وأدوات الطرف الثالث.</p><h3 style=";text-align:right;direction:rtl"> استخدم ميزات Angular المدمجة</h3><p style=";text-align:right;direction:rtl"> يوفر Angular العديد من الميزات المضمنة التي يمكن استخدامها لتنفيذ العلامات الوصفية. إحدى هذه الميزات هي خدمة العنوان ، والتي تسمح لك بتعيين علامة العنوان للصفحة. آخر هو خدمة Meta ، والتي تسمح لك بتعيين وصف الصفحة والعلامات الوصفية للكلمات الرئيسية.</p><p style=";text-align:right;direction:rtl"> لاستخدام خدمات العنوان والميتا ، يجب عليك استيرادهما إلى المكون الخاص بك واستخدام التابعين setTitle () و addTag () ، على التوالي. تسمح لك طريقة setTitle () بتعيين علامة العنوان للصفحة ، بينما تسمح لك طريقة addTag () بإضافة علامات وصفية أخرى ، مثل الوصف والكلمات الأساسية.</p><p style=";text-align:right;direction:rtl"> فيما يلي مثال لكيفية استخدام العنوان وخدمات التعريف في مكون Angular:</p><pre class="notranslate" style=";text-align:right;direction:rtl"> <code class="notranslate language-typescript">import { Title, Meta } from '@angular/platform-browser';

        @Component({
          selector: 'app-root',
          template: `
            </code><h1 style=";text-align:right;direction:rtl">{{title}}</h1>
          `,
        })
        export class AppComponent {
          title = 'My Angular App';

          constructor(private titleService: Title, private metaService: Meta) {
            this.titleService.setTitle(this.title);
            this.metaService.addTags([
              { name: 'description', content: 'This is my Angular app.' },
              { name: 'keywords', content: 'angular, app, seo' },
            ]);
          }
        }
        </pre><p style=";text-align:right;direction:rtl">في هذا المثال ، يتم استيراد خدمات العنوان والميتا إلى المكون ثم استخدامها في المُنشئ لتعيين علامة العنوان والوصف والعلامات الوصفية للكلمات الرئيسية ، على التوالي.</p><h3 style=";text-align:right;direction:rtl"> استخدم مكتبات وأدوات الطرف الثالث</h3><p style=";text-align:right;direction:rtl"> يمكن استخدام العديد من مكتبات وأدوات الطرف الثالث لتنفيذ العلامات الوصفية في Angular. واحدة من أكثر المكتبات شيوعًا هي Angular Universal module ، والتي تتيح لك استخدام العرض من جانب الخادم مع Angular.</p><p style=";text-align:right;direction:rtl"> تقوم Angular Universal بإنشاء HTML لموقع ويب على الخادم ثم إرسالها إلى العميل ، تمامًا مثل موقع ويب تقليدي يتم عرضه من جانب الخادم. هذا يجعل من السهل على محركات البحث الزحف إلى HTML الخاص بموقع Angular ، حيث يمكنهم الزحف إلى HTML كما يتم إنشاؤه على الخادم.</p><p style=";text-align:right;direction:rtl"> لاستخدام Angular Universal ، تحتاج إلى تثبيت الوحدة ثم تكوينها للعمل مع تطبيق Angular الخاص بك. بمجرد القيام بذلك ، يمكنك استخدام العنوان وخدمات التعريف ، أو أي طريقة أخرى ، لتنفيذ العلامات الوصفية في تطبيق Angular الخاص بك ، تمامًا كما تفعل مع موقع ويب تقليدي مقدم من جانب الخادم.</p><p style=";text-align:right;direction:rtl"> أداة أخرى يمكن استخدامها لتنفيذ العلامات الوصفية في Angular هي وحدة العلامات الوصفية لـ Angular. توفر هذه الوحدة واجهة برمجة تطبيقات بسيطة وسهلة الاستخدام لإعداد وتحديث العلامات الوصفية في تطبيق Angular.</p><p style=";text-align:right;direction:rtl"> لاستخدام وحدة العلامات الوصفية ، يجب عليك تثبيتها ثم استيرادها إلى المكون الخاص بك. بمجرد القيام بذلك ، يمكنك استخدام أساليب setTitle () و setTag () لتعيين علامة العنوان والعلامات الوصفية الأخرى ، على التوالي.</p><p style=";text-align:right;direction:rtl"> فيما يلي مثال لكيفية استخدام وحدة العلامات الوصفية في مكون Angular:</p><pre class="notranslate" style=";text-align:right;direction:rtl"> <code class="notranslate language-typescript">import { MetaTagModule } from 'angular-meta-tags';

        @Component({
          selector: 'app-root',
          template: `
            </code><h1 style=";text-align:right;direction:rtl">{{title}}</h1>
          `,
        })
        export class AppComponent {
          title = 'My Angular App';

          constructor(private metaTagService: MetaTagModule) {
            this.metaTagService.setTitle(this.title);
            this.metaTagService.setTag('description', 'This is my Angular app.');
            this.metaTagService.setTag('keywords', 'angular, app, seo');
          }
        }
        </pre><p style=";text-align:right;direction:rtl">في هذا المثال ، يتم استيراد وحدة العلامات الوصفية إلى المكون ثم استخدامها في المُنشئ لتعيين علامة العنوان والوصف والعلامات الوصفية للكلمات الرئيسية ، على التوالي.</p><h2 style=";text-align:right;direction:rtl"> خاتمة</h2><p style=";text-align:right;direction:rtl"> تعد العلامات الوصفية جزءًا مهمًا من استراتيجية تحسين محركات البحث وتزود محركات البحث بمعلومات مهمة حول موقع الويب. ومع ذلك ، فإن الهندسة المعمارية Angular تقدم بعض التحديات عندما يتعلق الأمر.</p>
        """
        let md = xml.renderXMLToMarkdown()
        print("md:\n", md)
        
    }
    func testCode() {
        let xml = """
        <pre><code class="someotherclass language-typescript">import { Title, Meta } from '@angular/platform-browser';

        @Component({
          selector: 'app-root',
          template: `
            <h1>{{title}}</h1>
          `,
        })
        export class AppComponent {
          title = 'My Angular App';

          constructor(private titleService: Title, private metaService: Meta) {
            this.titleService.setTitle(this.title);
            this.metaService.addTags([
              { name: 'description', content: 'This is my Angular app.' },
              { name: 'keywords', content: 'angular, app, seo' },
            ]);
          }
        }
        </code></pre><p>In this example, the Title and Meta services are imported into the component and then used in the constructor to set the title tag and description and keywords meta tags, respectively.</p>
        """
        let md = xml.renderXMLToMarkdown()
        print("md:\n", md)
    }
    func testSpacings() {
        let xml = """
        <p>Search Engine Optimization (SEO) is crucial for websites that want to be visible on search engines like Google, Bing, and Yahoo. Meta tags are a crucial part of an SEO strategy and provide search engines with information about a website. However, Angular, a popular JavaScript framework for building web applications, presents challenges when implementing meta tags.</p><p>This article will discuss how to get SEO meta tags to work with Angular. We will cover the basics of meta tags, why they are essential for SEO, and how Angular’s architecture affects the implementation of meta tags. Additionally, we will explore various techniques and tools that can be used to overcome the challenges posed by Angular and make sure your website’s meta tags are working optimally for SEO.</p><h2>Why are meta tags important for SEO?</h2><p>Meta tags provide search engines with important information about a website, such as its title, description, and keywords. This information is used by search engines to determine the relevance of a website to a user’s search query and to decide where to place the website in search engine results pages (SERPs).</p><p>The title and description tags are the two most important meta tags for SEO. The title tag is displayed as the title of the search engine result, and the description tag provides a summary of the website’s content. The title and description tags should be unique to each page on a website and accurately reflect that page’s content.</p><p>While less vital than once, keywords still play a role in SEO. The keywords meta tag provides a list of words and phrases related to a website’s content. Search engines use these keywords to determine the relevance of a website to a user’s search query.</p><h2>How Angular affects the implementation of meta tags</h2><p>Angular’s architecture affects the implementation of meta tags in several ways. Firstly, Angular uses client-side rendering, which means that the HTML of a website is generated dynamically on the client side rather than being generated on the server and then sent to the client. This means that search engines cannot crawl the HTML of an Angular website as they can with a traditional server-side rendered website.</p><p>Secondly, Angular’s use of single-page applications (SPAs) means that the HTML of a website is updated dynamically as the user interacts with the website rather than being reloaded each time the user navigates to a new page. This makes it more difficult for search engines to crawl the HTML of an Angular website, as they need to determine when a new page has been loaded quickly.</p><p>Finally, Angular’s use of routing to handle navigation between pages means that the URL of a website does not change when the user navigates to a new page. This can make it difficult for search engines to understand an Angular website’s structure and determine the relevance of each page to a user’s search query.</p><h2>Techniques for implementing meta tags in Angular</h2><p>There are several techniques that can be used to implement meta tags in Angular. These techniques range from using Angular’s built-in features to using third-party libraries and tools.</p><h3>Use Angular’s built-in features</h3><p>Angular provides several built-in features that can be used to implement meta tags. One of these features is the Title service, which allows you to set the title tag for a page. Another is the Meta service, which allows you to set a page’s description and keywords meta tags.</p><p>To use the Title and Meta services, you must import them into your component and use the setTitle() and addTag() methods, respectively. The setTitle() method allows you to set the title tag for a page, while the addTag() method allows you to add other meta tags, such as the description and keywords.</p><p>Here is an example of how you could use the Title and Meta services in an Angular component:</p><pre><code class="language-typescript">import { Title, Meta } from '@angular/platform-browser';

        @Component({
          selector: 'app-root',
          template: `
            <h1>{{title}}</h1>
          `,
        })
        export class AppComponent {
          title = 'My Angular App';

          constructor(private titleService: Title, private metaService: Meta) {
            this.titleService.setTitle(this.title);
            this.metaService.addTags([
              { name: 'description', content: 'This is my Angular app.' },
              { name: 'keywords', content: 'angular, app, seo' },
            ]);
          }
        }
        </code></pre><p>In this example, the Title and Meta services are imported into the component and then used in the constructor to set the title tag and description and keywords meta tags, respectively.</p><h3>Use third-party libraries and tools</h3><p>Several third-party libraries and tools can be used to implement meta tags in Angular. One of the most popular libraries is the Angular Universal module, which allows you to use server-side rendering with Angular.</p><p>Angular Universal generates the HTML of a website on the server and then sends it to the client, just like a traditional server-side rendered website. This makes it easier for search engines to crawl the HTML of an Angular website, as they can crawl the HTML as it is generated on the server.</p><p>To use Angular Universal, you need to install the module and then configure it to work with your Angular app. Once you have done this, you can use the Title and Meta services, or any other method, to implement meta tags in your Angular app, just as you would with a traditional server-side rendered website.</p><p>Another tool that can be used to implement meta tags in Angular is the Meta tags module for Angular. This module provides a simple and easy-to-use API for setting and updating meta tags in an Angular app.</p><p>To use the Meta tags module, you must install it and then import it into your component. Once you have done this, you can use the setTitle() and setTag() methods to set the title tag and other meta tags, respectively.</p><p>Here is an example of how you could use the Meta tags module in an Angular component:</p><pre><code class="language-typescript">import { MetaTagModule } from 'angular-meta-tags';

        @Component({
          selector: 'app-root',
          template: `
            <h1>{{title}}</h1>
          `,
        })
        export class AppComponent {
          title = 'My Angular App';

          constructor(private metaTagService: MetaTagModule) {
            this.metaTagService.setTitle(this.title);
            this.metaTagService.setTag('description', 'This is my Angular app.');
            this.metaTagService.setTag('keywords', 'angular, app, seo');
          }
        }
        </code></pre><p>In this example, the Meta tags module is imported into the component and then used in the constructor to set the title tag and description and keywords meta tags, respectively.</p><h2>Conclusion</h2><p>Meta tags are a crucial part of an SEO strategy and provide search engines with important information about a website. However, Angular’s architecture presents some challenges when it comes.</p>
        """
        let md = xml.renderXMLToMarkdown()
        print("md:\n", md)
    }
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

