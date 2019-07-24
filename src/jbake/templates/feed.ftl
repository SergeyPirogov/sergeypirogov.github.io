<?xml version="1.0" encoding="UTF-8"?>
<rss xmlns:dc="http://purl.org/dc/elements/1.1/"
     xmlns:content="http://purl.org/rss/1.0/modules/content/"
     xmlns:atom="http://www.w3.org/2005/Atom" version="2.0"
     xmlns:media="http://search.yahoo.com/mrss/">
  <channel>
    <title>
        <![CDATA[Заметки Автоматизатора]]>
    </title>
    <description>
        <![CDATA[Автоматизация рутины приоритетнее давления массой]]>
    </description>
    <link>http://automation-remarks.com</link>
    <atom:link href="http://automation-remarks.com/rss/index.rss" rel="self" type="application/rss+xml" />
    <ttl>60</ttl>
    <language>en-gb</language>
    <pubDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
    <lastBuildDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</lastBuildDate>

    <#list published_posts?chunk(20) as post>
        <item>
          <title>
              <#escape x as x?xml>${post.title}</#escape>
          </title>
          <link>http://automation-remarks.com/${post.uri}</link>
          <pubDate>${post.date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
          <guid isPermaLink="false">${post.uri}</guid>
          <description>
                    <#escape x as x?xml>
                        ${post.summary}
                    </#escape>
          </description>
          <content:encoded>
                    <#escape x as x?xml>
                        ${post.body}
                    </#escape>
          </content:encoded>
        </item>
    </#list>

  </channel> 
</rss>
