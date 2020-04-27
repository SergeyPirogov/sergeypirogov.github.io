<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Автоматизация рутины приоритетнее давления массой">
    <meta name="author" content="Сергей Пирогов">
    <meta name="HandheldFriendly" content="True" />

    <meta property="og:site_name" content="Заметки Автоматизатора">
    <meta property="og:type" content="article">
    <meta property="og:title" content="<#if (content.title)??><#escape x as x?xml>${content.title}</#escape></#if>">
    <meta property="og:image" content="${content.rootpath}../images/blog-logo.png"/>

    <#if content?? && content.summary??>
       <meta property="og:description" content="${content.summary}"/>
    </#if>
    <link rel="shortcut icon" href="${content.rootpath}../images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="${content.rootpath}../images/favicon.ico" type="image/x-icon">

    <title>Заметки Автоматизатора</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/album/">
    <link href="${content.rootpath}../css/github.css" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="${content.rootpath}../css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Custom styles for this template -->
    <link href="${content.rootpath}../css/album.css" rel="stylesheet">
    <link href="${content.rootpath}../css/main.css" rel="stylesheet">

    <script>
           (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
           (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
           m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
           })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

           ga('create', 'UA-57010828-1', 'auto');
           ga('send', 'pageview');
    </script>
  <body>