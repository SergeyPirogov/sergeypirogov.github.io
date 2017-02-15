<#include "header.ftl">

	<script>var disqus="httpspirogovgithubio";</script>

	<#include "menu.ftl">
	
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

                    <div class="social_buttons">
                        <a href="https://twitter.com/s_pirogov" class="twitter-follow-button" data-show-count="false">Follow @s_pirogov</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

                    <div id="fb-root"></div>
                    <script>(function(d, s, id) {
                      var js, fjs = d.getElementsByTagName(s)[0];
                      if (d.getElementById(id)) return;
                      js = d.createElement(s); js.id = id;
                      js.src = "//connect.facebook.net/ru_RU/sdk.js#xfbml=1&version=v2.8&appId=344312565764603";
                      fjs.parentNode.insertBefore(js, fjs);
                    }(document, 'script', 'facebook-jssdk'));</script>
                    <div class="fb-like"
                        data-href="https://developers.facebook.com/docs/plugins/"
                        data-width="100" data-layout="button_count"
                        data-action="like"
                        data-size="small"
                        data-show-faces="true"
                        data-share="true">
                    </div>
                    </div>

                    <footer class="post-footer">
                        <#if content.tags??>
                            <div class="post-tags">
                                <#list content.tags as tag>
                                    <a href="/tags/${tag?trim?replace(' ','-')}.html">${tag}</a>
                                </#list>
                            </div>
                        </#if>
                    </footer>

                    <div class="row">
                          <div class="col-md-6">
                                <div class='related-posts-holder'>
                                     <h2>Похожие заметки:</h2>
                                     <ul class="related-posts">
                                         <#assign related_posts = published_posts[0..6]>
                                         <#list  related_posts as post>
                                            <#if (content.title != post.title)>
                                                <li><a class='js-ajax-link' href="/${post.uri}">${post.title}</a></li>
                                            </#if>
                                         </#list>
                                     </ul>
                                 </div>
                          </div>
                          <div class="col-md-6">

                          </div>
                    </div>
				</div>
				<aside class="post-comments">
                    <div id="disqus_thread">
                        <script async="async">(function(d, s, id) {
                                  var js, fjs = d.getElementsByTagName(s)[0];
                                  if (d.getElementById(id)) return;
                                  js = d.createElement(s); js.id = id;
                                  js.src = "//connect.facebook.net/ru_RU/sdk.js#xfbml=1&version=v2.5&appId=344312565764603";
                                  fjs.parentNode.insertBefore(js, fjs);
                                }(document, 'script', 'facebook-jssdk'));
                        </script>
                    </div>
                </aside>
			</div>
		</article>
	</main>

<#include "footer.ftl">