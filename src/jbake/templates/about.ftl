<#include "header.ftl">

	<#include "menu.ftl">

    <main class="content" role="main">
    		<article class="post">
    			<div class="inner inner-about">
    				<div id="push">
    				    <header class="post-header">
                        	<h1 class="post-title">${content.title}</h1>
                        </header>
                        <section class="post-content">
                            ${content.body}
                        </section>
    				</div>
    			</div>
    		</article>
    </main>

	<#include "footer.ftl">