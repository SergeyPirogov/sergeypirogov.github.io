<#include "header.ftl">
	
	<#include "menu.ftl">

	<header id="header" class="header">
		<img id='blog-logo' src="images/blog-logo.png">
		<div class="inner">
			<a class="header-title" href="/">
				<h1 class="header-name">Заметки Автоматизатора</h1>
				<span class="header-description">Автоматизация рутины приоритетнее давления массой</span>
			</a>
		</div>
	</header>

	<div id="post-index" class="container">
		<main class="content" role="main">
			<#include "loop.ftl">
		</main>
	</div>

	<nav id="pagination" class="pagination" role="pagination">
    	<div class="inner">
    	    <#if (nextFileName)??>
    	        <a class="pagination-item pagination-next" href="${nextFileName}"><i class="icon-arrow-left"></i> <span>Newer Posts</span></a>
    	    </#if>
    	    <#-- <span class="pagination-info">Page {{page}} of {{pages}}</span> -->
    	    <#if (previousFileName)??>
    	        <a class="pagination-item pagination-prev" href="${previousFileName}"><span>Older Posts</span> <i class="icon-arrow-right"></i></a>
    	    </#if>
    	    <div class="clear"></div>
    	</div>
    </nav>

	<div id="body-class" style="display: none;" class=""></div>
	<div class='metrics'>
		<a class='sftru' href="http://software-testing.ru/about/blogs" target="_blank">
			<img src="http://software-testing.ru/images/stru_blog_banner.gif" border="0" width="88" height="60" alt="Software-Testing.Ru" />
		</a>
		<span class='readers'>Нас читает <span class='users'></span></span>
	</div>

<#include "footer.ftl">