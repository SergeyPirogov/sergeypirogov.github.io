<#include "header.ftl">

    <#include "menu.ftl">

    <div class="album py-5 bg-light">
       <div class="post-container container">

        <div class="row pl-3 pr-3 training-banner-container">
                <div class="col text-center pb-3 pt-2 training-banner">
                    <a href="https://t.me/automation_remarks_bot?start=blog">Присоединяйтесь в Telegram</a>
                </div>
        </div>

        <main class="content" role="main">
                <article class="post">
                    <div class="inner inner-post">
                        <div id="push">
                            <header class="post-header">
                                <h1 class="post-title"><#escape x as x?xml>${content.title}</#escape></h1>
                            </header>

                            <section class="post-content">
                                ${content.body}
                            </section>

              
                            <div class="row pl-3 pr-3 training-banner-container">
                              <div class="col text-center pb-3 pt-2 training-banner">
                                <a href="/trainings">Доступные тренинги по автоматизации тестирования: Java API, Java UI, Python API, Jenkins CI</a>
                              </div>
                            </div>

                            <div class="sidebar-social">
                                <h5>Подпишись:</h5>
                                <ul>
                                <li>
                                <a href="https://t.me/automation_remarks" class="telegram" target="_blank" rel="nofollow">
                                  <i class="fa fa-telegram" aria-hidden="true"></i>
                                  <span>Telegram</span>
                                </a>
                                </li>

                                <li>
                                <a href="https://www.patreon.com/automation_remarks?filters[tag]=%D0%B2%D0%B5%D1%87%D0%B5%D1%80%20%D0%B3%D1%80%D1%8F%D0%B7%D0%B8" class="podcast" target="_blank" rel="nofollow">
                                  <i class="fa fa-podcast" aria-hidden="true"></i>
                                  <span>Подкаст</span>
                                </a>
                                </li>

                                <li>
                                <a href="https://www.youtube.com/qaguild" class="youtube" target="_blank" rel="nofollow">
                                <i class="fa fa-youtube-play" aria-hidden="true"></i>
                                  <span>Youtube</span>
                                </a>
                                </li>

                                <li>
                                   <a href="https://www.patreon.com/automation_remarks" class="support" target="_blank" rel="9nofollow">
                                   <i class="fa fa-money" aria-hidden="true"></i>
                                      <span>Patreon</span>
                                   </a>
                                </li>
                            </div>
                        </div>
                    </div>
                </article>
        </main>
       </div>
    </div>

    </main>