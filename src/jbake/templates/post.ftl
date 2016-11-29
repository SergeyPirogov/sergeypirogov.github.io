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

                    <footer class="post-footer">
                        <#if content.tags??>
                            <div class="post-tags">
                                <#list content.tags as tag>
                                    <a href="/tags/${tag?trim?replace(' ','-')}.html">${tag}</a>
                                </#list>
                            </div>
                        </#if>
                        <div class="post-share">
                            <a class="icon-twitter" href="https://twitter.com/share?text=<#escape x as x?xml>${content.title}</#escape>&url=${content.uri}" onclick="window.open(this.href, 'twitter-share', 'width=550,height=235');return false;">
                                <span>Twitter</span>
                            </a>
                            <a class="icon-facebook" href="https://www.facebook.com/sharer/sharer.php?u=${content.uri}" onclick="window.open(this.href, 'facebook-share','width=580,height=296');return false;">
                                <span>Facebook</span>
                            </a>
                            <a class="icon-gplus" href="https://plus.google.com/share?url=${content.uri}" onclick="window.open(this.href, 'google-plus-share', 'width=490,height=530');return false;">
                                <span>Google+</span>
                            </a>
                        </div>
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