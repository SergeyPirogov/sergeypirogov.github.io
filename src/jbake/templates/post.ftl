<#include "header.ftl">

	<#include "menu.ftl">

	<div class="album py-5 bg-light">
       <div class="post-container container">
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

                            <div class="row">
                                  <div class="col-md-12">
                                        <div class='related-posts-holder'>
                                             <h2 class="related-posts-header">Похожие заметки:</h2>

                                                 <#assign related_posts = published_posts[0..3]>
                                                 <div class="card-deck">
                                                 <#list  related_posts as post>
                                                    <#if (content.title != post.title)>
                                                        <div class="card bg-light mb-3">
                                                            <#if post.image??>
                                                                <img class="card-img-top" src="images/risovach_ru.jpg" alt="Card image cap">
                                                            </#if>
                                                            <div class="card-body d-flex flex-column">
                                                              <p class="card-text">
                                                                      <small class="text-muted"><span class="post-date">${post.date?string("dd MMMM yyyy")}</span></small>
                                                              </p>
                                                              <h5 class="card-title"><a href="/${post.uri}"><#escape x as x?xml>${post.title}</#escape></a></h5>

                                                              <hr>

                                                              <p class="card-text">
                                                                <#if post.summary??>
                                                                   <#escape x as x?xml>${post.summary}</#escape>
                                                                </#if>
                                                              </p>

                                                              <a href="/${post.uri}" class="mt-auto card-link">
                                                                Читать<i class="fa fa-chevron-right ml-1"></i>
                                                              </a>
                                                            </div>
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