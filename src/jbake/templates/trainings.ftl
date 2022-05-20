<#include "header.ftl">

    <#include "menu.ftl">

    <main role="main">

      <section class="jumbotron archive text-center">
        <div class="container trainings">
          <h1 class="jumbotron-heading">Доступные тренинги по автоматизации тестирования</h1>
           <p class="lead text-muted">
          Тренинги в которых показано как построить проект, с чего начать и как довести все до CI сервера.
          Отличная возможность посмотреть на идеи и подходы и сделать автоматизацию на своем проекте лучше.
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