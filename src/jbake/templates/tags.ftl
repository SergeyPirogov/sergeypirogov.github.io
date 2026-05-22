<#include "header.ftl">

	<#include "menu.ftl">
    <main role="main">

        <section class="section-header-modern-page text-center">
                <div class="container">
                  <h1 class="section-title-modern">${tag}</h1>
                </div>
              </section>

        <div class="page-content-section">
	         <div class="container">
	            <div id="push" class="row post-list row-cols-1 row-cols-md-3">
			        <#list tag_posts as post>
                    		<#if (post.status == "published")>
                    			<#include "loop.ftl">
                    		</#if>
                    </#list>
			    </div>
	        </div>
	    </div>

	</main>
<#include "footer.ftl">