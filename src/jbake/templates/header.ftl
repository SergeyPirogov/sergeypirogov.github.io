<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="verify-admitad" content="b4f109c5f4" />

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
    <link rel="stylesheet" type="text/css" href="${content.rootpath}../css/blog.css" />

    <script>
       (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
       (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
       m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
       })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

       ga('create', 'UA-57010828-1', 'auto');
       ga('send', 'pageview');

    </script>
</head>

<body>
    <section id="wrapper">
        <div id="ajax-container">