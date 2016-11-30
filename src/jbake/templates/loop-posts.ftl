<div class="post-list">
	<div id="push">

	<#list posts as post>
		<#if (post.status == "published")>
			<#include "loop.ftl">
		</#if>
  	</#list>

	</div>
</div>