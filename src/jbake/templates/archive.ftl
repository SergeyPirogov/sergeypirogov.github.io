<#include "header.ftl">

    <#include "menu.ftl">

    <main role="main">

      <section class="section-header-modern-page text-center py-6">
        <div class="container">
          <h1 class="section-title-modern">Архив заметок</h1>
          <p class="section-subtitle-modern">Все статті про автоматизацію тестування</p>
          <div class="gcse-search mt-4">
        </div>
      </section>

      <div class="album py-5 bg-light ">
        <div class="container">
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