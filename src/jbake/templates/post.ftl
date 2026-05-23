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

<div class="page-content-section py-2">
	<div class="container">
		<main class="content" role="main">
			<article class="post">
				<section class="post-content pb-2 border-bottom">
					${content.body}
				</section>

				<footer class="post-footer py-2 border-bottom">
					<#if content.tags??>
						<div class="post-tags mb-0">
							<#list content.tags as tag>
								<a class="btn btn-sm btn-outline-dark tag" href="/tags/${tag?trim?replace(' ','-')}.html">${tag}</a>
							</#list>
						</div>
					</#if>
				</footer>

				<div class="subscribe-section py-2 border-bottom">
					<div class="subscribe-card">
						<h3 class="subscribe-title">Не пропустіть нові статті</h3>
						<p class="subscribe-subtitle">Підписуйтесь на мої канали, щоб отримувати оновлення</p>
						<div class="subscribe-links">
							<a href="https://t.me/automation_remarks_bot" class="subscribe-button" target="_blank" rel="nofollow">
								<i class="fa-brands fa-telegram"></i>
								<span>Telegram</span>
							</a>
							<a href="https://www.youtube.com/qaguild" class="subscribe-button" target="_blank" rel="nofollow">
								<i class="fa-brands fa-youtube"></i>
								<span>YouTube</span>
							</a>
							<a href="https://www.patreon.com/automation_remarks" class="subscribe-button" target="_blank" rel="nofollow">
								<i class="fa-brands fa-patreon"></i>
								<span>Patreon</span>
							</a>
							<a href="https://www.patreon.com/automation_remarks?filters[tag]=%D0%B2%D0%B5%D1%87%D0%B5%D1%80%20%D0%B3%D1%80%D1%8F%D0%B7%D0%B8" class="subscribe-button" target="_blank" rel="nofollow">
								<i class="fa-solid fa-podcast"></i>
								<span>Подкаст</span>
							</a>
						</div>
					</div>
				</div>

				<div class="related-posts-section py-2">
					<div class="related-posts-holder">
						<h2 class="related-posts-header mb-3">Схожі статті:</h2>
						<#assign related_posts = published_posts[0..3]>
						<div class="row row-cols-1 row-cols-md-4 g-3">
							<#list related_posts as post>
								<#if (content.title != post.title)>
									<div class="col">
										<a href="/${post.uri}" class="blog-card-modern-link">
											<div class="blog-card-modern">
												<h5 class="blog-title-modern"><#escape x as x?xml>${post.title}</#escape></h5>
												<p class="blog-date-modern">${post.date?string("dd MMM yyyy")}</p>
												<#if post.summary??>
													<p class="blog-summary-modern">${post.summary}</p>
												</#if>
												<div class="blog-footer-modern">Прочитати →</div>
											</div>
										</a>
									</div>
								</#if>
							</#list>
						</div>
					</div>
				</div>
			</article>
		</main>
	</div>
</div>

<#include "footer.ftl">
