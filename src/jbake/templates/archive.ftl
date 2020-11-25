<#include "header.ftl">

    <#include "menu.ftl">

    <main role="main">

      <section class="jumbotron archive text-center">
        <div class="container">

          <h1 class="jumbotron-heading">Архив заметок</h1>
          <div class="gcse-search">
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