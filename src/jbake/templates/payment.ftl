<#include "header.ftl">

    <#include "menu.ftl">

    <section class="section-header-modern-page text-center">
        <div class="container">
            <h1 class="section-title-modern"><#escape x as x?xml>${content.title}</#escape></h1>
        </div>
    </section>

    <div class="page-content-section">
       <div class="container">
        <main class="content" role="main">
                <article class="post">
                        <div id="push">
                            <section class="post-content">
                                ${content.body}
                            </section>


                            <div class="row pl-3 pr-3 training-banner-container">
                              <div class="col text-center pb-3 pt-2 training-banner">
                                <a href="/trainings">Переглянути інші тренінги: Java API, Java UI, Python API, Jenkins CI</a>
                              </div>
                            </div>
                        </div>
                    </article>
        </main>
       </div>
    </div>

<#include "footer.ftl">
