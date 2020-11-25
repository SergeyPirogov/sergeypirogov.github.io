<#include "header.ftl">

	<#include "menu.ftl">

	<main class="content" role="main">
		<div class="album py-5 bg-light ">
                <div class="container">
                  <div id="push" class="row post-list row-cols-1 row-cols-md-4 page">
				    <header class="post-header">
                        <h1 class="post-title"><#escape x as x?xml>${content.title}</#escape></h1>
                    </header>
                    <section class="post-content">
                        ${content.body}
                    </section>
				</div>
			</div>
		</div>
	</main>