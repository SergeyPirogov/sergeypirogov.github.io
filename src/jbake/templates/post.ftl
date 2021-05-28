<#include "header.ftl">

	<#include "menu.ftl">

	<div class="album py-5 bg-light">
       <div class="post-container container">

        <div class="row pl-3 pr-3 training-banner-container">
                <div class="col text-center pb-3 pt-2 training-banner">
                    <a href="https://t.me/automation_remarks">Присоединяйтесь в Telegram</a>
                </div>
        </div>

            <main class="content" role="main">
                <article class="post">
                    <div class="inner inner-post">
                        <div id="push">
                            <header class="post-header">
                                <span class="post-meta">
                                    <span class="post-author">
                                        <a href="/author/index.html">Сергей Пирогов</a>
                                    </span> |
                                    <span class="post-date">
                                        ${content.date?string("dd/MM/yyyy")}
                                    </span>
                                </span>
                                <div class="clear"></div>
                                <h1 class="post-title"><#escape x as x?xml>${content.title}</#escape></h1>
                            </header>

                            <section class="post-content">
                                ${content.body}
                            </section>

                            <footer class="post-footer">
                                 <#if content.tags??>
                                   <div class="post-tags">
                                       <#list content.tags as tag>
                                           <a class="btn btn-sm btn-outline-dark tag" href="/tags/${tag?trim?replace(' ','-')}.html">${tag}</a>
                                       </#list>
                                   </div>
                                  </#if>

                            </footer>

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




                            <div class="row">
                                  <div class="col-md-12">
                                        <div class='related-posts-holder'>
                                             <h2 class="related-posts-header">Похожие заметки:</h2>
                                                 <#assign related_posts = published_posts[0..3]>
                                                 <div class="card-deck">
                                                 <#list  related_posts as post>
                                                    <#if (content.title != post.title)>

                                                        <div class="card bg-light mb-3">
                                                         <a class="linked-card rel-card h-100" target="blank" href="/${post.uri}">
                                                            <div class="related-card card-body d-flex flex-column">
                                                              <p class="card-text">
                                                                      <small class="text-muted"><span class="post-date">${post.date?string("dd MMMM yyyy")}</span></small>
                                                              </p>
                                                              <h5 class="card-title">
                                                                  <!-- <a href="/${post.uri}"> -->
                                                                    <#escape x as x?xml>${post.title}</#escape>
                                                                  <!-- </a> -->
                                                              </h5>

                                                              <!--
                                                              <p class="card-text">
                                                                <#if post.summary??>
                                                                   <#escape x as x?xml>${post.summary}</#escape>
                                                                </#if>
                                                              </p>
                                                              -->
                                                              <!-- <a href="/${post.uri}" class="mt-auto card-link">
                                                                Читать<i class="fa fa-chevron-right ml-1"></i>
                                                              </a> -->
                                                            </div>
                                                            </a>
                                                        </div>

                                                    </#if>
                                                 </#list>
                                                 </div>
                                         </div>
                                  </div>
                                  <div class="col-md-6">

                                  </div>
                            </div>
                        </div>
                    </div>
                </article>
            </main>
       </div>
    </div>
<#include "footer.ftl">