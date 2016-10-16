<#include "header.ftl">

	<#include "menu.ftl">

	<header id="header" class="header">
		<div class="inner">
		    <span class="header-title">
		        <h1 class="header-name">${tag}</h1>
		    </span>
		</div>
	</header>

	<div id="post-index" class="container">
		<main class="content" role="main">
			<#include "loop-tags.ftl">
		</main>
	</div>
	
<#include "footer.ftl">