<#include "header.ftl">
	
	<#include "menu.ftl">

	<header id="header" class="header">
		<img id='blog-logo' src="images/blog-logo.png" alt="Blog logo">
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
    	    <a class="pagination-item pagination-prev" href="/archive.html"><span>Архив</span> <i class="icon-arrow-right"></i></a>
    	    <div class="clear"></div>
    	</div>
    </nav>

	<div id="body-class" style="display: none;" class=""></div>
	<div class='metrics'>
		<a class='sftru' href="http://software-testing.ru/about/blogs" target="_blank">
			<img src="http://software-testing.ru/images/stru_blog_banner.gif" border="0" width="88" height="60" alt="Software-Testing.Ru" />
		</a>
		<!-- Yandex.Metrika informer -->
        <a href="https://metrika.yandex.ru/stat/?id=28753121&amp;from=informer"
        target="_blank" rel="nofollow"><img src="https://informer.yandex.ru/informer/28753121/3_0_FFFFFFFF_FFFFFFFF_0_pageviews"
        style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)" class="ym-advanced-informer" data-cid="28753121" data-lang="ru" /></a>
        <!-- /Yandex.Metrika informer -->

		<span class='readers'>Нас читает <span class='users'></span></span>
	</div>

<#include "footer.ftl">