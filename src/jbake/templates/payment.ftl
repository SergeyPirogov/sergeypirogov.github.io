<#include "header.ftl">

    <#include "menu.ftl">

    <div class="album py-5 bg-light">
       <div class="post-container container">
        <main class="content" role="main">
                <article class="post">
                    <div class="inner inner-post">
                        <div id="push">
                            <header class="post-header text-center">
                                <h1 class="post-title"><#escape x as x?xml>${content.title}</#escape></h1>
                            </header>

                            <section class="post-content">
                                ${content.body}
                            </section>

              
                            <div class="row pl-3 pr-3 training-banner-container">
                              <div class="col text-center pb-3 pt-2 training-banner">
                                <a href="/trainings">Переглянути інші тренінги: Java API, Java UI, Python API, Jenkins CI</a>
                              </div>
                            </div>
                        </div>
                    </div>
                </article>
        </main>
       </div>
    </div>

    </main>