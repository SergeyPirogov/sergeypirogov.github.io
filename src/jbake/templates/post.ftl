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


                    <!-- admitad.banner: a9qyanzjqcb4f109c5f45799280e31 Издательство «МИФ» -->
                    <a target="_blank" rel="nofollow" href="https://ad.admitad.com/g/a9qyanzjqcb4f109c5f45799280e31/?i=4"><img width="728" height="90" border="0" src="https://ad.admitad.com/b/a9qyanzjqcb4f109c5f45799280e31/" alt="Издательство «МИФ»"/></a>
                    <!-- /admitad.banner -->

                    <footer class="post-footer">
                        <#if content.tags??>
                            <div class="post-tags">
                                <#list content.tags as tag>
                                    <a style="background: cornflowerblue;"
                                       href="/tags/${tag?trim?replace(' ','-')}.html">${tag}</a>
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

				 <!-- Begin MailChimp Signup Form -->
                                   <link href="//cdn-images.mailchimp.com/embedcode/horizontal-slim-10_7.css" rel="stylesheet" type="text/css">
                                   <style type="text/css">
                                   	#mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; width:100%;}
                                   	/* Add your own MailChimp form style overrides in your site stylesheet or in this style block.
                                   	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
                                   </style>
                                   <div id="mc_embed_signup">
                                   <form action="//automation-remarks.us10.list-manage.com/subscribe/post?u=d24f95005c1b66c13389aceb9&amp;id=ce47ec0c3f" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                                       <div id="mc_embed_signup_scroll">
                                   	<label for="mce-EMAIL">Подписывайтесь на email рассылку</label>
                                   	<input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="email address" required>
                                       <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                                       <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_d24f95005c1b66c13389aceb9_ce47ec0c3f" tabindex="-1" value=""></div>
                                       <div class="clear"><input type="submit" value="Подписаться" name="subscribe" id="mc-embedded-subscribe" class="button" style="background: black;"></div>
                                       </div>
                                   </form>
                                   </div>

                                   <!--End mc_embed_signup-->

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