<#include "header.ftl">

    <#include "menu.ftl">

    <main role="main">

      <section class="section-header-modern-page text-center">
        <div class="container">
          <h1 class="section-title-modern">Архів статей</h1>
          <p class="section-subtitle-modern">Все статті про автоматизацію тестування</p>
        </div>
      </section>

      <div class="page-content-section py-4 bg-light-modern">
        <div class="container">
          <div id="push" class="row row-cols-1 row-cols-md-4 g-3">
                <#list posts as post>
                    <#if (post.status == "published")>
                         <div class="col">
                           <a href="/${post.uri}" class="blog-card-modern-link">
                             <div class="blog-card-modern">
                               <h5 class="blog-title-modern"><#escape x as x?xml>${post.title}</#escape></h5>
                               <p class="blog-date-modern">${post.date?string("dd MMM yyyy")}</p>
                               <#if post.summary??>
                                 <p class="blog-summary-modern"><#escape x as x?xml>${post.summary}</#escape></p>
                               </#if>
                               <div class="blog-footer-modern">Прочитати →</div>
                             </div>
                           </a>
                         </div>
                    </#if>
                </#list>
          </div>
        </div>
      </div>

    </main>

<#include "footer.ftl">