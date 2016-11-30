<#include "header.ftl">

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
				</div>
			</div>
		</article>
	</main>

<#include "footer.ftl">