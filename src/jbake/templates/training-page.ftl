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
      <h4 class="mb-4">Залишити заявку</h4>

      <div class="info-box mb-4">
        <p class="small text-muted mb-2">
          <i class="fa fa-info-circle mr-2"></i>Якшо ви сплатили, заявка створюється автоматично
        </p>
        <p class="small text-muted mb-0">
          <i class="fa fa-globe mr-2"></i>Форма працює для України та Європи
        </p>
      </div>

      <form id="my-form" method="POST" action="https://formspree.io/f/xzdwgrqg">
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="name" class="form-label-modern">Ім'я</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Ваше ім'я" required>
          </div>

          <div class="form-group col-md-6">
            <label for="email" class="form-label-modern">Email</label>
            <input type="email" class="form-control" name="_replyto" id="email" placeholder="your@email.com" required>
          </div>
        </div>

        <div class="form-group">
          <label for="city-name" class="form-label-modern">Місто</label>
          <input type="text" class="form-control" id="city-name" name="city" placeholder="Ваше місто" required>
        </div>

        <input type="hidden" name="_subject" value="${content.title} - (${content.price})"/>

        <button id="my-form-button" class="btn btn-success">
          Відправити заявку
        </button>
        <p id="my-form-status" class="mt-3"></p>
      </form>

      <div class="text-center mt-5">
        <p class="small text-muted mb-3">Питання? Напишіть мені:</p>
        <a href="https://t.me/spirogov" target="_blank" class="btn btn-info">
          <i class="fab fa-telegram-plane mr-2"></i>Telegram @spirogov
        </a>
      </div>
    </div>
  </div>
</div>

<script>
  window.addEventListener("DOMContentLoaded", function() {

var form = document.getElementById("my-form");
var button = document.getElementById("my-form-button");
var status = document.getElementById("my-form-status");

function success() {
form.reset();
button.style = "display: none ";
status.innerHTML = "<strong>✓ Дякую! Ваша заявка прийнята.</strong>";
status.classList.add('success');
}

function error() {
status.innerHTML = "Помилка при відправці. Спробуйте ще раз.";
status.classList.add('error');
}

form.addEventListener("submit", function(ev) {
ev.preventDefault();
var data = new FormData(form);
ajax(form.method, form.action, data, success, error);
});
  });

  function ajax(method, url, data, success, error) {
var xhr = new XMLHttpRequest();
xhr.open(method, url);
xhr.setRequestHeader("Accept", "application/json");
xhr.onreadystatechange = function() {
if (xhr.readyState !== XMLHttpRequest.DONE) return;
if (xhr.status === 200) {
success(xhr.response, xhr.responseType);
} else {
error(xhr.status, xhr.response, xhr.responseType);
}
    };
    xhr.send(data);
  }
</script>

<#include "footer.ftl">
