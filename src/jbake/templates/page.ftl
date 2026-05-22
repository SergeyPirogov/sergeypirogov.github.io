<#include "header.ftl">

	<#include "menu.ftl">

	<main class="content" role="main">
		<section class="section-header-modern-page text-center">
			<div class="container">
				<h1 class="section-title-modern"><#escape x as x?xml>${content.title}</#escape></h1>
			</div>
		</section>

		<div class="page-content-section">
                <div class="container">
                  <div id="push" class="row post-list">
					    <section class="post-content">
                        ${content.body}
                    </section>
					</div>
				</div>
		</div>
	</main>
