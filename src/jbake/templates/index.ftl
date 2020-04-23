<!DOCTYPE html>
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://getbootstrap.com/docs/4.0/assets/img/favicons/favicon.ico">

    <title>Заметки Автоматизатора</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/album/">

    <!-- Bootstrap core CSS -->
    <link href="${content.rootpath}../css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${content.rootpath}../css/font-awesome.min.css">
    <!-- Custom styles for this template -->
    <link href="${content.rootpath}../css/album.css" rel="stylesheet">
    <link href="${content.rootpath}../css/main.css" rel="stylesheet">
  <meta class="CryptoPluginExtensionLoaded"></head>

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