<#include "header.ftl">

    <#include "menu.ftl">

    <main role="main">

      <section class="jumbotron text-center">
        <div class="container">
          <img id="blog-logo" src="images/blog-logo.png" alt="Blog logo">
          <h1 class="jumbotron-heading">Заметки Автоматизатора</h1>
          <p class="lead text-muted">Автоматизация рутины приоритетнее давления массой</p>
        </div>
      </section>

      <div class="album py-3 bg-light index">
        <div class="container">
          <!-- <div class="row pl-3 pr-3 training-banner-container">
            <div class="col text-center pb-3 pt-2 training-banner">
                <a href="/trainings">Доступные тренинги по автоматизации тестирования: Java API, Java UI, Python API, Jenkins CI</a>
            </div>
          </div> -->
          <div class="row pl-3 pr-3 mb-3">
            <a href="https://otus.ru/lessons/devops-praktiki-i-instrumenty/?utm_source=partners&utm_medium=cpm&utm_campaign=devops&utm_content=test&utm_term=automation_remarks">
              <img src="/images/banner/devops.jpg" width="1100" height="60"></img>
            </a>
          </div>
          <div id="push" class="row post-list row-cols-1 row-cols-md-4">
                <#list posts as post>
                    <#if (post.status == "published")>
                         <#include "loop.ftl">
                    </#if>
                </#list>
          </div>
          <a href="/archive.html" type="button" class="archive-btn float-right">Архив
            <i class="fa fa-chevron-right ml-1"></i>
          </a>
        </div>
      </div>

    </main>

<#include "footer.ftl">