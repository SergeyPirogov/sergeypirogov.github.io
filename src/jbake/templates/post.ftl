<#include "header.ftl">

	<#include "menu.ftl">

	<section class="section-header-modern-page text-center">
		<div class="container">
			<h1 class="section-title-modern"><#escape x as x?xml>${content.title}</#escape></h1>
			<p class="section-subtitle-modern">
				<span class="post-author">
					<a href="/author/index.html">Сергій Пірогов</a>
				</span> |
				<span class="post-date">
					${content.date?string("dd/MM/yyyy")}
				</span>
			</p>
		</div>
	</section>

	<div class="page-content-section">
       <div class="container">

        <div class="row px-3 training-banner-container">
                <div class="col text-center pb-3 pt-2 training-banner">
                    <a href="https://t.me/automation_remarks_bot?start=blog">Приєднатись до Telegram</a>
                </div>
        </div>

            <main class="content" role="main">
                <article class="post">
                        <div id="push">
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

                            <div class="row px-3 training-banner-container">
                                                                    <div class="col text-center pb-3 pt-2 training-banner">
                                                                        <a href="/trainings">Тренінги для покращення навичок: Java API, Java UI, Python API, Jenkins CI</a>
                                                                    </div>
                                                        </div>

                            <div class="sidebar-social">
                                <h5>Підписатися:</h5>
                                <ul>
                                <li>
                                <a href="https://t.me/automation_remarks_bot" class="telegram" target="_blank" rel="nofollow">
                                  <i class="fa-brands fa-telegram" aria-hidden="true"></i>
                                  <span>Telegram</span>
                                </a>
                                </li>

                                <li>
                                <a href="https://www.patreon.com/automation_remarks?filters[tag]=%D0%B2%D0%B5%D1%87%D0%B5%D1%80%20%D0%B3%D1%80%D1%8F%D0%B7%D0%B8" class="podcast" target="_blank" rel="nofollow">
                                  <i class="fa-solid fa-podcast" aria-hidden="true"></i>
                                  <span>Podcast</span>
                                </a>
                                </li>

                                <li>
                                <a href="https://www.youtube.com/qaguild" class="youtube" target="_blank" rel="nofollow">
                                <i class="fa-brands fa-youtube" aria-hidden="true"></i>
                                  <span>Youtube</span>
                                </a>
                                </li>

                                <li>
                                   <a href="https://www.patreon.com/automation_remarks" class="support" target="_blank" rel="nofollow">
                                   <i class="fa-solid fa-money-bill" aria-hidden="true"></i>
                                      <span>Patreon</span>
                                   </a>
                                </li>
                            </ul>
                            </div>

                            <div class="row">
                                  <div class="col-md-12">
                                        <div class='related-posts-holder'>
                                             <h2 class="related-posts-header">Схожі статті:</h2>
                                                 <#assign related_posts = published_posts[0..3]>
                                                 <div class="row row-cols-1 row-cols-md-3 g-3">
                                                 <#list  related_posts as post>
                                                    <#if (content.title != post.title)>

                                                        <div class="card bg-light mb-3">
                                                         <a class="linked-card rel-card h-100" target="_blank" href="/${post.uri}">
                                                            <div class="related-card card-body d-flex flex-column">
                                                              <p class="card-text">
                                                                      <small class="text-muted"><span class="post-date">${post.date?string("dd MMMM yyyy")}</span></small>
                                                              </p>
                                                              <h5 class="card-title">
                                                                    <#escape x as x?xml>${post.title}</#escape>
                                                              </h5>
                                                            </div>
                                                            </a>
                                                        </div>

                                                    </#if>
                                                 </#list>
                                                 </div>
                                         </div>
                                  </div>
                            </div>
                        </div>
                    </article>
            </main>
       </div>
    </div>
<#include "footer.ftl">
