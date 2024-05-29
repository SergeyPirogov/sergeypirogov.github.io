<#include "header.ftl">

    <#include "menu.ftl">

    <main role="main">

      <section class="jumbotron archive text-center">
        <div class="container trainings">
          <h1 class="jumbotron-heading">Доступні тренінги з автоматизації тестування</h1>
           <p class="lead text-muted">
          Тренінги, які показують, як створити проект, з чого почати та як перенести все на сервер CI.
          Це чудова можливість переглянути ідеї та підходи та покращити автоматизацію вашого проекту.
          </p>
        </div>
      </section>

      <div class="album py-5 bg-light ">
        <div class="container">
          <div id="push" class="row post-list row-cols-1 row-cols-md-3">
            <#list trainingPages as content>
                <#if (content.state == "active")>
                  <#include "training-card.ftl">
                </#if>
            </#list>
          </div>

        </div>
      </div>
    </main>

<#include "footer.ftl">