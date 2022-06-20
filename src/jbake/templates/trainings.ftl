<#include "header.ftl">

    <#include "menu.ftl">

    <main role="main">

      <section class="jumbotron archive text-center">
        <div class="container trainings">
          <h1 class="jumbotron-heading">Affordable Test Automation Trainings</h1>
           <p class="lead text-muted">
          Trainings that show how to build a project, where to start and how to bring everything to the CI server.
          This is a great opportunity to look at ideas and approaches and make automation on your project better.
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