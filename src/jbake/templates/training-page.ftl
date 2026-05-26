<#include "header.ftl">
<#include "menu.ftl">

<section class="section-header-modern-page text-center">
  <div class="container">
    <div>
      <h1 class="section-title-modern"><#escape x as x?xml>${content.title}</#escape></h1>
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

    <#if content.state == "active" && content.price??>
      <#assign usdPrice = content.price?replace("$", "")?replace("/h", "")?trim />
      <#assign slug = content.uri?replace("/trainings/", "")?replace("/index.html", "")?replace("/", "-") />
      <div class="payment-block mt-4">
        <div class="d-flex gap-2 justify-content-center align-items-center flex-wrap">
          <input
            type="email"
            class="form-control payment-email-input"
            style="max-width: 350px; height: 60px; font-size: 16px;"
            placeholder="Ваш email"
            required
          />
          <button
            class="btn btn-success btn-lg"
            style="height: 60px; white-space: nowrap; display: flex; align-items: center; gap: 8px;"
            data-price-usd="${usdPrice}"
            data-bill-number="${slug}"
            data-description="${content.title}"
            onclick="handlePortmonePayment(this)"
          >
            <i class="fa-brands fa-cc-visa payment-icon"></i><i class="fa-brands fa-cc-mastercard payment-icon"></i>
            <span class="pay-amount" style="font-size: 18px; font-weight: 600;">завантаження...</span>
          </button>
        </div>
      </div>
    </#if>

    <div class="training-navigation mt-3">
      <a href="/trainings" class="btn btn-outline-success">
        <i class="fa-solid fa-arrow-left me-2"></i>Всі тренінги
      </a>
    </div>

    <div class="training-form-container mt-3">
      <div class="text-center">
        <p class="small text-muted mb-3">Питання? Напишіть мені:</p>
        <a href="https://t.me/spirogov" target="_blank" class="btn btn-info">
          <i class="fa-brands fa-telegram me-2"></i>Telegram @spirogov
        </a>
      </div>
    </div>
  </div>
</div>

<#include "footer.ftl">
