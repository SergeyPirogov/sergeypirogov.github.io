<#include "header.ftl">

	<#include "menu.ftl">
	
	<main class="content" role="main">
    		<article class="post">
    			<div class="inner inner-post">
    				<div id="push">
    				    <header class="post-header">
                        	<h1 class="post-title">Архив заметок</h1>
                        </header>
                        <section class="post-content">

                            <#list published_posts as post>
                                        <#if (last_month)??>
                                            <#if post.date?string("MMMM yyyy") != last_month>
                                                </ul>
                                                <h4>${post.date?string("MMMM yyyy")}</h4>
                                                <ul>
                                            </#if>

                                        <#else>
                                            <h4>${post.date?string("MMMM yyyy")}</h4>
                                            <ul>
                                        </#if>

                            		    <li>
                            		        ${post.date?string("dd")} -
                            		        <a href="${content.rootpath}${post.uri}">
                            		            <#escape x as x?xml>${post.title}</#escape>
                            		        </a>
                            		    </li>
                            		    <#assign last_month = post.date?string("MMMM yyyy")>
                            </#list>
                            </ul>
                        </section>
    				</div>
    			</div>
    		</article>
    </main>


	
<#include "footer.ftl">