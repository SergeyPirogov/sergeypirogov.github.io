<#include "header.ftl">
<#include "menu.ftl">

<section class="section-header-modern-page py-6">
  <div class="container">
    <div>
      <h1 class="section-title-modern"><#escape x as x?xml>${content.title}</#escape></h1>
      <p class="section-subtitle-modern">${content.price}</p>
    </div>
  </div>
</section>

<div class="training-details-container py-5">
  <div class="container">
    <article class="training-content-modern">
      <div class="inner inner-post">
        <section class="post-content">
          ${content.body}
        </section>
      </div>
    </article>

    <div class="training-navigation mt-5">
      <a href="/trainings" class="btn btn-outline-success">
        <i class="fa fa-arrow-left mr-2"></i>Всі тренінги
      </a>
    </div>

    <div class="training-form-container mt-5">
      <div class="payment-button-container">
        <a href="https://prt.mn/ejyJB0Bt0Z" data-button="" class="f-p-b" style="--fpb-background:#56c64e; --fpb-color:#000000; --fpb-border-color:#ffffff; --fpb-border-width:2px; --fpb-font-weight:400; --fpb-font-size:16px; --fpb-border-radius:9px;">
          <i data-text="name">Оплатити</i>
          <i data-text="amount">${content.price}</i>
          <i data-brand="visa"></i><i data-brand="mastercard"></i>
        </a>
      </div>

      <div class="text-center mt-5">
        <p class="small text-muted mb-3">Питання? Напишіть мені:</p>
        <a href="https://t.me/spirogov" target="_blank" class="btn btn-info">
          <i class="fab fa-telegram-plane mr-2"></i>Telegram @spirogov
        </a>
      </div>
    </div>
  </div>
</div>

<#include "footer.ftl">
