<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />


    <title><#if (content.title)??><#escape x as x?xml>${content.title}</#escape><#else>Заметки Автоматизатора</#if></title>
    <meta name="description" content="Автоматизация рутины приоритетнее давления массой">
    <meta name="HandheldFriendly" content="True" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta property="og:site_name" content="Заметки Автоматизатора">
    <meta property="og:type" content="article">
    <meta property="og:title" content="<#if (content.title)??><#escape x as x?xml>${content.title}</#escape></#if>">
    <meta property="og:image" content="http://automation-remarks.com/images/blog-logo.png"/>

    <#if content?? && content.summary??>
        	<meta property="og:description" content="${content.summary}"/>
    </#if>
	
	<link rel="stylesheet" href="${content.rootpath}../css/blueimp-gallery.min.css">	
    <link rel="stylesheet" type="text/css" href="${content.rootpath}../css/dependencies.min.css"/>
    <link rel="stylesheet" href="${content.rootpath}../css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${content.rootpath}../css/style.min.css" />
    <link rel="stylesheet" type="text/css" href="${content.rootpath}../css/blog.min.css" />

    <!-- Yandex.Metrika counter -->
    <script type="text/javascript">
        (function (d, w, c) {
            (w[c] = w[c] || []).push(function() {
                try {
                    w.yaCounter28753121 = new Ya.Metrika({
                        id:28753121,
                        clickmap:true,
                        trackLinks:true,
                        accurateTrackBounce:true,
                        webvisor:true
                    });
                } catch(e) { }
            });

            var n = d.getElementsByTagName("script")[0],
                s = d.createElement("script"),
                f = function () { n.parentNode.insertBefore(s, n); };
            s.type = "text/javascript";
            s.async = true;
            s.src = "https://mc.yandex.ru/metrika/watch.js";

            if (w.opera == "[object Opera]") {
                d.addEventListener("DOMContentLoaded", f, false);
            } else { f(); }
        })(document, window, "yandex_metrika_callbacks");
    </script>
    <noscript>
    <div><img src="https://mc.yandex.ru/watch/28753121" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
    <!-- /Yandex.Metrika counter -->
</head>

<body>
    <section id="wrapper">
        <div id="ajax-container">