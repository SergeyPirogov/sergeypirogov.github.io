<#include "header.ftl">

<#include "menu.ftl">

<section class="section-header-modern-page text-center">
  <div class="container">
    <h1 class="section-title-modern"><#escape x as x?xml>${content.title}</#escape></h1>
    <p class="section-subtitle-modern">
      <span class="post-date">${content.date?string("dd/MM/yyyy")}</span>
    </p>
  </div>
</section>

<div class="page-content-section py-2">
  <div class="container">
    <main class="content" role="main">
      <article class="post">
        <section class="post-content pb-2 border-bottom">
          ${content.body}
        </section>

        <div class="subscribe-section py-2 border-bottom">
          <div class="subscribe-card">
            <h3 class="subscribe-title">Слухайте на інших платформах</h3>
            <div class="subscribe-links">
              <a href="https://www.youtube.com/qaguild" class="subscribe-button" target="_blank" rel="nofollow">
                <i class="fa-brands fa-youtube"></i>
                <span>YouTube</span>
              </a>
              <a href="https://www.patreon.com/automation_remarks?filters[tag]=%D0%B2%D0%B5%D1%87%D0%B5%D1%80%20%D0%B3%D1%80%D1%8F%D0%B7%D0%B8" class="subscribe-button" target="_blank" rel="nofollow">
                <i class="fa-solid fa-podcast"></i>
                <span>Patreon</span>
              </a>
              <a href="https://t.me/automation_remarks_bot" class="subscribe-button" target="_blank" rel="nofollow">
                <i class="fa-brands fa-telegram"></i>
                <span>Telegram</span>
              </a>
            </div>
          </div>
        </div>

        <div class="training-navigation mt-3">
          <a href="/podcast" class="btn btn-outline-success">
            <i class="fa-solid fa-arrow-left me-2"></i>Всі епізоди
          </a>
        </div>
      </article>
    </main>
  </div>
</div>

<#include "footer.ftl">
