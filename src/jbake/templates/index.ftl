<#include "header.ftl">

    <#include "menu.ftl">

    <main role="main">

      <!-- Hero Section -->
      <section class="hero-section text-center text-white">
        <div class="container">
          <img id="blog-logo" src="images/blog-logo.png" alt="Blog logo">
          <h1 class="hero-heading">QA Automation Консультації та Тренінги</h1>
          <p class="lead hero-lead">
            Senior QA Automation Engineer · Спікер конференцій · Open Source Contributor
          </p>
          <div class="mt-4">
            <a href="/trainings" class="btn btn-success btn-lg mr-3">
              <i class="fa fa-graduation-cap mr-1"></i> Переглянути тренінги
            </a>
            <a href="#consulting-cta" class="btn btn-outline-light btn-lg">
              <i class="fa fa-calendar mr-1"></i> Замовити консультацію
            </a>
          </div>
        </div>
      </section>

      <!-- Services Section -->
      <section id="services" class="py-5 bg-white">
        <div class="container">
          <h2 class="section-heading text-center mb-5">Чим можу допомогти</h2>
          <div class="row row-cols-1 row-cols-md-3">

            <div class="col mb-4">
              <div class="card service-card h-100 text-center p-4">
                <div class="service-icon mb-3">
                  <i class="fa fa-graduation-cap fa-3x" style="color:#36d995"></i>
                </div>
                <h4 class="card-title">Тренінги</h4>
                <p class="card-text">
                  14 відеотренінгів з автоматизації: Playwright, API, UI, Jenkins CI, SQL, GraphQL,
                  Contract Testing. Від $15.
                </p>
                <a href="/trainings" class="btn btn-outline-success mt-auto">Всі тренінги</a>
              </div>
            </div>

            <div class="col mb-4">
              <div class="card service-card h-100 text-center p-4">
                <div class="service-icon mb-3">
                  <i class="fa fa-users fa-3x" style="color:#36d995"></i>
                </div>
                <h4 class="card-title">Менторинг</h4>
                <p class="card-text">
                  Індивідуальний підхід до вашої задачі: code review, стратегія тестування,
                  побудова CI/CD пайплайну. $30/год.
                </p>
                <a href="#consulting-cta" class="btn btn-outline-success mt-auto">Записатись</a>
              </div>
            </div>

            <div class="col mb-4">
              <div class="card service-card h-100 text-center p-4">
                <div class="service-icon mb-3">
                  <i class="fa fa-comments fa-3x" style="color:#36d995"></i>
                </div>
                <h4 class="card-title">Консультація</h4>
                <p class="card-text">
                  Разова сесія для вирішення конкретної проблеми: налаштування фреймворку,
                  вибір стеку, архітектура автоматизації. $30/год.
                </p>
                <a href="#consulting-cta" class="btn btn-outline-success mt-auto">Написати</a>
              </div>
            </div>

          </div>
        </div>
      </section>

      <!-- Training Preview Section -->
      <section id="trainings" class="py-5 bg-light">
        <div class="container">
          <div class="d-flex justify-content-between align-items-center mb-4">
            <h2 class="section-heading mb-0">Доступні тренінги</h2>
            <a href="/trainings" class="archive-btn">
              Всі тренінги <i class="fa fa-chevron-right ml-1"></i>
            </a>
          </div>
          <div class="row post-list row-cols-1 row-cols-md-3">

            <!-- Playwright Java -->
            <div class="col-md-4 mb-3 d-flex">
              <a class="linked-card active" href="/trainings/playwright-java.html">
                <div class="card h-100 training-card">
                  <div class="card-body d-flex flex-column">
                    <h5 class="card-title index-cart-title">UI Automation with Playwright Java</h5>
                    <hr class="mt-auto">
                    <p class="card-text">Java 17, Playwright, Gradle, Github Actions</p>
                    <h6 class="card-subtitle mb-2 text-muted">$30</h6>
                  </div>
                  <div class="card-footer bg-transparent">
                    Деталі<i class="fa fa-chevron-right ml-1"></i>
                  </div>
                </div>
              </a>
            </div>

            <!-- Playwright JS/TS -->
            <div class="col-md-4 mb-3 d-flex">
              <a class="linked-card active" href="/trainings/playwright-js.html">
                <div class="card h-100 training-card">
                  <div class="card-body d-flex flex-column">
                    <h5 class="card-title index-cart-title">UI Automation with Playwright JS/TS</h5>
                    <hr class="mt-auto">
                    <p class="card-text">JS/TS, Playwright, Github Actions</p>
                    <h6 class="card-subtitle mb-2 text-muted">$30</h6>
                  </div>
                  <div class="card-footer bg-transparent">
                    Деталі<i class="fa fa-chevron-right ml-1"></i>
                  </div>
                </div>
              </a>
            </div>

            <!-- API Java -->
            <div class="col-md-4 mb-3 d-flex">
              <a class="linked-card active" href="/trainings/api-java.html">
                <div class="card h-100 training-card">
                  <div class="card-body d-flex flex-column">
                    <h5 class="card-title index-cart-title">API Automation (Java)</h5>
                    <hr class="mt-auto">
                    <p class="card-text">Java 8, Rest Assured, Gradle, Allure, Jenkins CI</p>
                    <h6 class="card-subtitle mb-2 text-muted">$30</h6>
                  </div>
                  <div class="card-footer bg-transparent">
                    Деталі<i class="fa fa-chevron-right ml-1"></i>
                  </div>
                </div>
              </a>
            </div>

            <!-- API Python -->
            <div class="col-md-4 mb-3 d-flex">
              <a class="linked-card active" href="/trainings/api-python.html">
                <div class="card h-100 training-card">
                  <div class="card-body d-flex flex-column">
                    <h5 class="card-title index-cart-title">API Automation (Python)</h5>
                    <hr class="mt-auto">
                    <p class="card-text">Python 3, pytest, requests, Jenkins</p>
                    <h6 class="card-subtitle mb-2 text-muted">$30</h6>
                  </div>
                  <div class="card-footer bg-transparent">
                    Деталі<i class="fa fa-chevron-right ml-1"></i>
                  </div>
                </div>
              </a>
            </div>

            <!-- UI Java (Selenide) -->
            <div class="col-md-4 mb-3 d-flex">
              <a class="linked-card active" href="/trainings/ui-java.html">
                <div class="card h-100 training-card">
                  <div class="card-body d-flex flex-column">
                    <h5 class="card-title index-cart-title">UI Automation (Java - Selenide)</h5>
                    <hr class="mt-auto">
                    <p class="card-text">Java 8, Selenide, Gradle, Allure, Jenkins CI</p>
                    <h6 class="card-subtitle mb-2 text-muted">$30</h6>
                  </div>
                  <div class="card-footer bg-transparent">
                    Деталі<i class="fa fa-chevron-right ml-1"></i>
                  </div>
                </div>
              </a>
            </div>

            <!-- Individual Mentoring -->
            <div class="col-md-4 mb-3 d-flex">
              <a class="linked-card active" href="/trainings/mentoring-java.html">
                <div class="card h-100 training-card">
                  <div class="card-body d-flex flex-column">
                    <h5 class="card-title index-cart-title">Individual Mentoring/Consulting</h5>
                    <hr class="mt-auto">
                    <p class="card-text">1-on-1 sessions for your automation challenges</p>
                    <h6 class="card-subtitle mb-2 text-muted">$30/h</h6>
                  </div>
                  <div class="card-footer bg-transparent">
                    Деталі<i class="fa fa-chevron-right ml-1"></i>
                  </div>
                </div>
              </a>
            </div>

          </div>
        </div>
      </section>

      <!-- Social Proof Section -->
      <section id="social-proof" class="py-5 bg-white">
        <div class="container">
          <h2 class="section-heading text-center mb-5">Досвід та спільнота</h2>
          <div class="row text-center mb-5">
            <div class="col-6 col-md-3 mb-4">
              <div class="stat-number">10+</div>
              <div class="stat-label">років в автоматизації</div>
            </div>
            <div class="col-6 col-md-3 mb-4">
              <div class="stat-number">200+</div>
              <div class="stat-label">статей у блозі</div>
            </div>
            <div class="col-6 col-md-3 mb-4">
              <div class="stat-number">14</div>
              <div class="stat-label">активних тренінгів</div>
            </div>
            <div class="col-6 col-md-3 mb-4">
              <div class="stat-number">QAGuild</div>
              <div class="stat-label">YouTube канал</div>
            </div>
          </div>

          <div class="row text-center">
            <div class="col-12">
              <p class="text-muted mb-3">Спікер конференцій</p>
              <span class="badge-conf">QAFest</span>
              <span class="badge-conf">SQA Days</span>
              <span class="badge-conf">SeleniumCamp</span>
              <span class="badge-conf">Heisenbug</span>
              <span class="badge-conf">IT-Week</span>
            </div>
          </div>

          <div class="row text-center mt-4">
            <div class="col-12">
              <p class="text-muted mb-3">Open Source внески</p>
              <p>
                Python бібліотека для Selenium WebDriver, схвалена командою selenium.dev.<br>
                Python версія Testcontainers, прийнята до офіційної організації Testcontainers.
              </p>
              <a href="/author/index.html" class="btn btn-outline-secondary mt-2">Детальніше про мене</a>
            </div>
          </div>
        </div>
      </section>

      <!-- Consulting CTA Section -->
      <section id="consulting-cta" class="py-5 consulting-cta-bg">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-md-8 text-center mb-4">
              <h2 class="section-heading">Замовити консультацію або записатись на тренінг</h2>
              <p class="text-muted">
                Залиште заявку і я зв'яжусь з вами протягом доби.
                Або напишіть напряму: <a href="https://t.me/spirogov">@spirogov</a>
              </p>
            </div>
          </div>
          <div class="row justify-content-center">
            <div class="col-md-6">
              <form id="cta-form" method="POST" action="https://formspree.io/myyngrqz">
                <div class="form-group">
                  <input type="text" class="form-control" name="name"
                         placeholder="Ім'я" required>
                </div>
                <div class="form-group">
                  <input type="email" class="form-control" name="_replyto"
                         placeholder="Email" required>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="message" rows="3"
                            placeholder="Опишіть вашу задачу або питання"></textarea>
                </div>
                <input type="hidden" name="_subject" value="Заявка з сайту automation-remarks.com"/>
                <button type="submit" class="btn btn-success btn-block">Відправити</button>
                <p id="cta-form-status" class="mt-2 text-center"></p>
              </form>
            </div>
          </div>
        </div>
      </section>

      <!-- Blog Section -->
      <section id="blog" class="py-5 bg-light">
        <div class="container">
          <div class="d-flex justify-content-between align-items-center mb-4">
            <h2 class="section-heading mb-0">Останні статті</h2>
            <a href="/archive.html" class="archive-btn">
              Архів <i class="fa fa-chevron-right ml-1"></i>
            </a>
          </div>
          <div id="push" class="row post-list row-cols-1 row-cols-md-3">
            <#list posts[0..5] as post>
                <#if (post.status == "published")>
                     <#include "loop.ftl">
                </#if>
            </#list>
          </div>
        </div>
      </section>

    </main>

    <script>
      document.getElementById("cta-form").addEventListener("submit", function(e) {
        e.preventDefault();
        var form = this;
        var formData = new FormData(form);

        fetch(form.action, {
          method: 'POST',
          body: formData
        })
        .then(response => {
          if (response.ok) {
            document.getElementById("cta-form-status").innerHTML = "✓ Спасибо! Я свяжусь с вами вскоре.";
            form.reset();
          } else {
            document.getElementById("cta-form-status").innerHTML = "Ошибка при отправке. Попробуйте еще раз.";
          }
        })
        .catch(error => {
          document.getElementById("cta-form-status").innerHTML = "Ошибка при отправке. Попробуйте еще раз.";
        });
      });
    </script>

<#include "footer.ftl">
