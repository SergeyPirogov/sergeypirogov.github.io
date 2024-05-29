<#include "header.ftl">

    <#include "menu.ftl">

    <main role="main">

      <section class="jumbotron text-center">
        <div class="container">
          <img id="blog-logo" src="images/blog-logo.png" alt="Blog logo">
          <h1 class="jumbotron-heading">Automation Remarks</h1>
          <p class="lead text-muted">Automation of the routine takes precedence over mass pressure</p>
        </div>
      </section>

      <div class="album py-3 bg-light index">
        <div class="container">
          <div class="row pl-3 pr-3 training-banner-container">
            <div class="col text-center pb-3 pt-2 training-banner">
                <a href="/trainings">Тренінги для покращення навичок: Playwright, Java API, Java UI, Python API, Jenkins CI, SQL</a>
            </div>
          </div>
          <div id="push" class="row post-list row-cols-1 row-cols-md-4">
                <#list posts[0..5] as post>
                    <#if (post.status == "published")>
                         <#include "loop.ftl">
                    </#if>
                </#list>
          </div>
          <a href="/archive.html" type="button" class="archive-btn float-right">Архів
            <i class="fa fa-chevron-right ml-1"></i>
          </a>
        </div>
      </div>

    </main>

<#include "footer.ftl">
