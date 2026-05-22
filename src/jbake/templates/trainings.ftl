<#include "header.ftl">

<#include "menu.ftl">

<main role = "main">

      <section class="section-header-modern-page text-center py-6">
        <div class="container trainings">
          <h1 class="section-title-modern">Доступні тренінги з автоматизації тестування</h1>
          <p class="section-subtitle-modern">
          Тренінги, які показують, як створити проект, з чого почати та як перенести все на сервер CI.
          Це чудова можливість переглянути ідеї та підходи та покращити автоматизацію вашого проекту.
          </p>
        </div>
      </section>

      <section class="trainings-section-modern py-2 bg-light-modern">
        <div class="container">
          <div id="push" class="row">
            <#list trainingPages as content>
                <#if (content.state == "active")>
                  <div class="col-lg-4 col-md-6 mb-4">
                    <#include "training-card.ftl">
                  </div>
                </#if>
            </#list>
          </div>
        </div>
      </section>
    </main>

<#include "footer.ftl">