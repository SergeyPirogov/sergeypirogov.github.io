<!DOCTYPE html>
<html lang="en">
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

    <title>Заметки Автоматизатора</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/album/">

    <!-- Bootstrap core CSS -->
    <link href="${content.rootpath}../css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${content.rootpath}../css/font-awesome.min.css">
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

    <header>
      <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
        <div class='container'>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
              <a class="nav-link" href="/">Главная <span class="sr-only">(current)</span></a>
            </li>

          </ul>
          <ul class="navbar-nav">
             <li class="nav-item">
               <a class="nav-link" href="https://soundcloud.com/qaguild">Подкаст</a>
             </li>
             <li class="nav-item">
               <a class="nav-link" href="https://tttttt.me/automation_remarks">Телеграм</a>
             </li>
             <li class="nav-item">
               <a class="nav-link" href="/archive.html">Архив</a>
             </li>
          </ul>
        </div>
        </div>
      </nav>
    </header>

    <main role="main">

      <section class="jumbotron text-center">
        <div class="container">
          <img id="blog-logo" src="images/blog-logo.png" alt="Blog logo">
          <h1 class="jumbotron-heading">Заметки Автоматизатора</h1>
          <p class="lead text-muted">Автоматизация рутины приоритетнее давления массой</p>
        </div>
      </section>

      <div class="album py-5 bg-light ">
        <div class="container">

          <div id="push" class="row post-list">
            <div class="card-columns">
            <#list posts as post>
                <#if (post.status == "published")>
                     <#include "loop.ftl">
                </#if>
            </#list>
            </div>
          </div>
        <a href="" type="button" class="archive-btn float-right">Архив
            <i class="fa fa-chevron-right ml-1"></i>
        </a>
        </div>

      </div>

    </main>

    <footer class="text-muted">
      <div class="container">

      </div>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${content.rootpath}../js/jquery-3.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="${content.rootpath}../js/popper.js"></script>
    <script src="${content.rootpath}../js/bootstrap.js"></script>
    <script src="${content.rootpath}../js/holder.js"></script>

    </body>
</html>