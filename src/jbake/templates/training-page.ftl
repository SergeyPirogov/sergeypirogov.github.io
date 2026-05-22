<#include "header.ftl">
<#include "menu.ftl">

<section class="section-header-modern-page">
  <div class="container">
    <div>
      <h1 class="section-title-modern"><#escape x as x?xml>${content.title}</#escape></h1>
      <p class="section-subtitle-modern">${content.price}</p>
    </div>
  </div>
</section>

<div class="training-details-container py-3">
  <div class="container">
    <article class="training-content-modern">
      <div class="">
        <section class="post-content">
          ${content.body}
        </section>
      </div>
    </article>

    <div class="training-navigation mt-3">
      <a href="/trainings" class="btn btn-outline-success">
        <i class="fa fa-arrow-left mr-2"></i>Всі тренінги
      </a>
    </div>

    <div class="training-form-container mt-3">
      <div class="text-center">
        <p class="small text-muted mb-3">Питання? Напишіть мені:</p>
        <a href="https://t.me/spirogov" target="_blank" class="btn btn-info">
          <i class="fab fa-telegram-plane mr-2"></i>Telegram @spirogov
        </a>
      </div>
    </div>
  </div>
</div>

<#include "footer.ftl">
