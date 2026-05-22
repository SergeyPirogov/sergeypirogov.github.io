<#include "header.ftl">

    <#include "menu.ftl">

    <main role="main">

      <!-- Hero Section - Modern Gradient -->
      <section class="hero-section-modern">
        <div class="hero-content">
          <div class="container-fluid">
            <div class="row align-items-center" style="position: relative; min-height: 500px;">
              <div class="col-lg-7 hero-text-column">
                <h1 class="hero-title-modern">Automation Remarks<br><span class="text-accent">Консультації & Тренінги</span></h1>
                <p class="hero-subtitle-modern">
                  Трансформуйте вашу стратегію тестування з допомогою експертного керівництва від Senior QA Automation Engineer. Сотні інженерів навчені, десятки компаній допоможено.
                </p>
                <div class="hero-cta-modern mt-5">
                  <a href="/trainings" class="btn-modern btn-primary-modern">
                    <i class="fa fa-graduation-cap mr-2"></i>Переглянути тренінги
                  </a>
                  <a href="#consulting-cta" class="btn-modern btn-secondary-modern">
                    <i class="fa fa-calendar mr-2"></i>Замовити консультацію
                  </a>
                </div>
              </div>
              <div class="col-lg-5 hero-logo-container">
                <img id="blog-logo" src="images/blog-logo.png" alt="QA Automation" class="hero-image-modern">
              </div>
            </div>
          </div>
        </div>
        <div class="hero-wave"></div>
      </section>

      <!-- Services Section - Modern Cards -->
      <section id="services" class="services-section-modern py-6">
        <div class="container">
          <div class="section-header-modern text-center mb-5">
            <h2 class="section-title-modern">Що я пропоную</h2>
            <p class="section-subtitle-modern">Адаптовані рішення для ваших потреб автоматизації</p>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="service-card-modern">
                <div class="service-icon-modern">
                  <i class="fa fa-graduation-cap"></i>
                </div>
                <h3 class="service-title-modern">Відеотренінги</h3>
                <p class="service-text-modern">
                  14 комплексних відеокурсів: Playwright, API тестування, UI автоматизація, Jenkins CI, SQL, GraphQL та інше. Від $15.
                </p>
                <a href="/trainings" class="service-link-modern">Переглянути Курси →</a>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="service-card-modern">
                <div class="service-icon-modern">
                  <i class="fa fa-users"></i>
                </div>
                <h3 class="service-title-modern">Персональний Менторинг</h3>
                <p class="service-text-modern">
                  Індивідуальне керівництво: code review, стратегія тестування, налаштування CI/CD пайплайну. Робота напряму з експертом.
                </p>
                <a href="#consulting-cta" class="service-link-modern">Розпочати Менторинг →</a>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="service-card-modern">
                <div class="service-icon-modern">
                  <i class="fa fa-comments"></i>
                </div>
                <h3 class="service-title-modern">Консультація</h3>
                <p class="service-text-modern">
                  Вирішіть конкретні проблеми: налаштування фреймворку, вибір стеку, архітектура тестування. Гнучкі сесії консультацій.
                </p>
                <a href="#consulting-cta" class="service-link-modern">Замовити Сесію →</a>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Training Preview - Modern Grid -->
      <section id="trainings" class="trainings-section-modern py-6 bg-light-modern">
        <div class="container">
          <div class="section-header-modern text-center mb-5">
            <h2 class="section-title-modern">Популярні тренінги</h2>
            <p class="section-subtitle-modern">Почніть навчатися негайно з відеокурсів</p>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-6 mb-4">
              <a href="/trainings/playwright-java/index.html" class="training-card-modern-link">
                <div class="training-card-modern">
                  <div class="training-badge">ПОПУЛЯРНИЙ</div>
                  <h4 class="training-title-modern">Playwright Java UI</h4>
                  <p class="training-tech-modern">Java 17 • Playwright • Gradle</p>
                  <div class="training-footer-modern">
                    <span class="training-price-modern">$30</span>
                    <i class="fa fa-arrow-right"></i>
                  </div>
                </div>
              </a>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <a href="/trainings/playwright-js/index.html" class="training-card-modern-link">
                <div class="training-card-modern">
                  <div class="training-badge">ПОПУЛЯРНИЙ</div>
                  <h4 class="training-title-modern">Playwright JS/TS UI</h4>
                  <p class="training-tech-modern">JavaScript • Playwright • GitHub</p>
                  <div class="training-footer-modern">
                    <span class="training-price-modern">$30</span>
                    <i class="fa fa-arrow-right"></i>
                  </div>
                </div>
              </a>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <a href="/trainings/api-java/index.html" class="training-card-modern-link">
                <div class="training-card-modern">
                  <h4 class="training-title-modern">API Тестування Java</h4>
                  <p class="training-tech-modern">Java 8 • Rest Assured • Allure</p>
                  <div class="training-footer-modern">
                    <span class="training-price-modern">$30</span>
                    <i class="fa fa-arrow-right"></i>
                  </div>
                </div>
              </a>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <a href="/trainings/api-python/index.html" class="training-card-modern-link">
                <div class="training-card-modern">
                  <h4 class="training-title-modern">API Тестування Python</h4>
                  <p class="training-tech-modern">Python 3 • pytest • requests</p>
                  <div class="training-footer-modern">
                    <span class="training-price-modern">$30</span>
                    <i class="fa fa-arrow-right"></i>
                  </div>
                </div>
              </a>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <a href="/trainings/ui-java/index.html" class="training-card-modern-link">
                <div class="training-card-modern">
                  <h4 class="training-title-modern">UI Тестування Java</h4>
                  <p class="training-tech-modern">Java 8 • Selenide • Allure</p>
                  <div class="training-footer-modern">
                    <span class="training-price-modern">$30</span>
                    <i class="fa fa-arrow-right"></i>
                  </div>
                </div>
              </a>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <a href="/trainings/mentoring-java/index.html" class="training-card-modern-link">
                <div class="training-card-modern">
                  <h4 class="training-title-modern">Персональний Менторинг</h4>
                  <p class="training-tech-modern">Адаптований • Гнучкий • Комплексний</p>
                  <div class="training-footer-modern">
                    <span class="training-price-modern">$30/год</span>
                    <i class="fa fa-arrow-right"></i>
                  </div>
                </div>
              </a>
            </div>
          </div>
          <div class="text-center mt-5">
            <a href="/trainings" class="btn-modern btn-outline-modern">Всі тренінги</a>
          </div>
        </div>
      </section>

      <!-- Social Proof - Modern Stats -->
      <section id="social-proof" class="social-proof-section-modern py-6">
        <div class="container">
          <div class="section-header-modern text-center mb-5">
            <h2 class="section-title-modern">Довіра Інженерів</h2>
            <p class="section-subtitle-modern">10+ років досвіду в автоматизації тестування</p>
          </div>
          <div class="row stats-modern mb-5">
            <div class="col-md-3 col-6 mb-4">
              <div class="stat-modern">
                <div class="stat-number-modern">10+</div>
                <div class="stat-label-modern">Років Досвіду</div>
              </div>
            </div>
            <div class="col-md-3 col-6 mb-4">
              <div class="stat-modern">
                <div class="stat-number-modern">200+</div>
                <div class="stat-label-modern">Статей Блогу</div>
              </div>
            </div>
            <div class="col-md-3 col-6 mb-4">
              <div class="stat-modern">
                <div class="stat-number-modern">500+</div>
                <div class="stat-label-modern">Навчених Інженерів</div>
              </div>
            </div>
            <div class="col-md-3 col-6 mb-4">
              <div class="stat-modern">
                <div class="stat-number-modern">12k</div>
                <div class="stat-label-modern">Підписників YouTube</div>
              </div>
            </div>
          </div>

          <div class="text-center mb-5">
            <p class="conference-label-modern">Спікер на Провідних Конференціях</p>
            <div class="conferences-modern">
              <span class="conf-badge-modern">QAFest</span>
              <span class="conf-badge-modern">SQA Days</span>
              <span class="conf-badge-modern">SeleniumCamp</span>
              <span class="conf-badge-modern">Heisenbug</span>
              <span class="conf-badge-modern">EPAM IT Week</span>
            </div>
          </div>

          <div class="text-center mt-5 pt-5 border-top">
            <p class="conference-label-modern">Знайдіть мене в LinkedIn</p>
            <a href="https://www.linkedin.com/in/spirogov/" target="_blank" class="linkedin-link-modern">
              <i class="fab fa-linkedin-in"></i> Сергій Пірогов на LinkedIn
            </a>
          </div>
        </div>
      </section>

      <!-- Consulting CTA - Modern -->
      <section id="consulting-cta" class="cta-section-modern py-6">
        <div class="container">
          <div class="cta-content-modern">
            <h2 class="cta-title-modern">Готові Трансформувати Ваше Тестування?</h2>
            <p class="cta-subtitle-modern">
              Отримайте експертне керівництво, адаптоване до потреб вашої команди. Доступні тренінги, консультації та менторинг.
            </p>
            <form id="cta-form" method="POST" action="https://formspree.io/f/xzdwgrqg">
              <div class="form-row">
                <div class="form-group col-md-6">
                  <input type="text" class="form-control" name="name" placeholder="Ваше Ім'я" required>
                </div>
                <div class="form-group col-md-6">
                  <input type="email" class="form-control" name="_replyto" placeholder="Ваш Email" required>
                </div>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="4" placeholder="Розповідіть про ваші потреби..."></textarea>
              </div>
              <input type="hidden" name="_subject" value="Заявка на Консультацію з automation-remarks.com"/>
              <div class="text-center">
                <button type="submit" class="btn btn-success">Відправити</button>
              </div>
              <p id="cta-form-status" class="form-status-modern"></p>
            </form>
            <p class="cta-alternative-modern">
              Або напишіть прямо: <a href="https://t.me/spirogov">@spirogov в Telegram</a>
            </p>
          </div>
        </div>
      </section>

      <!-- Blog Section - Modern -->
      <section id="blog" class="blog-section-modern py-6 bg-light-modern">
        <div class="container">
          <div class="section-header-modern text-center mb-5">
            <h2 class="section-title-modern">Останні статті</h2>
            <p class="section-subtitle-modern">Глибокі матеріали про техніки автоматизації тестування</p>
          </div>
          <div class="row">
            <#list posts[0..5] as post>
                <#if (post.status == "published")>
                  <div class="col-lg-4 col-md-6 mb-4">
                    <a href="/${post.uri}" class="blog-card-modern-link">
                      <div class="blog-card-modern">
                        <h4 class="blog-title-modern">${post.title}</h4>
                        <p class="blog-date-modern">${post.date?string("dd MMM yyyy")}</p>
                        <p class="blog-summary-modern">${post.summary}</p>
                        <div class="blog-footer-modern">Прочитати →</div>
                      </div>
                    </a>
                  </div>
                </#if>
            </#list>
          </div>
          <div class="text-center mt-5 pb-5">
            <a href="/archive.html" class="btn-modern btn-outline-modern">Всі статті</a>
          </div>
        </div>
      </section>

    </main>

    <script>
      document.getElementById("cta-form").addEventListener("submit", function(e) {
        e.preventDefault();
        var form = this;
        var formData = new FormData(form);
        var status = document.getElementById("cta-form-status");

        fetch(form.action, {
          method: 'POST',
          body: formData
        })
        .then(response => {
          if (response.ok) {
            status.innerHTML = "✓ Дякую! Я зв'яжусь з вами найскоріше.";
            status.classList.add('success');
            form.reset();
          } else {
            status.innerHTML = "Помилка при відправці. Спробуйте ще раз.";
            status.classList.add('error');
          }
        })
        .catch(error => {
          status.innerHTML = "Помилка при відправці. Спробуйте ще раз.";
          status.classList.add('error');
        });
      });
    </script>

<#include "footer.ftl">
