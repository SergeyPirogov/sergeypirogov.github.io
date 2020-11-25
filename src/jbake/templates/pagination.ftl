<nav id="pagination" class="pagination" role="pagination">
	<div class="inner">
	    <!-- {{#if prev}} -->
	    <#if (content.uri != index.html)>
	        <a class="pagination-item pagination-next" href="{{page_url prev}}"><i class="icon-arrow-left"></i> <span>Newer Posts</span></a>
	    </#if>
	    <!-- {{/if}} -->
	    <span class="pagination-info">Page {{page}} of {{pages}}</span>
	    <!-- {{#if next}} -->
	        <a class="pagination-item pagination-prev" href="{{page_url next}}"><span>Older Posts</span> <i class="icon-arrow-right"></i></a>
	    <!-- {{/if}} -->
	    <div class="clear"></div>
	</div>
</nav>