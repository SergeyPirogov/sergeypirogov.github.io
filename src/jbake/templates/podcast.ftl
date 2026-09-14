<#include "header.ftl">

<#include "menu.ftl">

<main role="main">

  <section class="section-header-modern-page text-center">
    <div class="container">
      <h1 class="section-title-modern"><#escape x as x?xml>${content.title}</#escape></h1>
      <#if content.summary??>
        <p class="section-subtitle-modern"><#escape x as x?xml>${content.summary}</#escape></p>
      </#if>
    </div>
  </section>

  <div class="page-content-section py-2">
    <div class="container">
      <section class="post-content pb-2">
        ${content.body}
      </section>
    </div>
  </div>

  <section class="blog-section-modern py-4 bg-light-modern">
    <div class="container">
      <div class="row row-cols-1 row-cols-md-4 g-3">
        <#list podcastEpisodes?sort_by("date")?reverse as episode>
          <#if (episode.status == "published")>
            <div class="col">
              <a class="blog-card-modern-link" href="/${episode.uri}">
                <div class="blog-card-modern">
                  <h5 class="blog-title-modern"><#escape x as x?xml>${episode.title}</#escape></h5>
                  <p class="blog-date-modern">${episode.date?string("dd MMM yyyy")}</p>
                  <#if episode.summary??>
                    <p class="blog-summary-modern"><#escape x as x?xml>${episode.summary}</#escape></p>
                  </#if>
                  <div class="blog-footer-modern">Слухати →</div>
                </div>
              </a>
            </div>
          </#if>
        </#list>
      </div>
    </div>
  </section>

</main>

<#include "footer.ftl">
