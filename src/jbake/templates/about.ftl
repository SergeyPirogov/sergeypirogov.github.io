<#include "header.ftl">

	<#include "menu.ftl">

    <main class="content" role="main">
    		<article class="post">
    			<div class="inner inner-about">
    				<div id="push">
    				    <header id='about-header' class="post-header">
                        	<h1 class="post-title">${content.title}</h1>
                        </header>
                        <section class="post-content">
                            ${content.body}
                        </section>
    				</div>

    			<!-- The Gallery as inline carousel, can be positioned anywhere on the page -->
                <div id="blueimp-gallery-carousel" class="blueimp-gallery blueimp-gallery-carousel">
                                                    <div class="slides"></div>
                                                    <h3 class="title"></h3>
                                                    <a class="prev">‹</a>
                                                    <a class="next">›</a>
                </div>

    			</div>
    		</article>
    </main>
    <script
      src="https://code.jquery.com/jquery-1.12.4.min.js"
      integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
      crossorigin="anonymous"></script>
    <script src="${content.rootpath}../js/blueimp-gallery.min.js"></script>
    <script src="${content.rootpath}../js/carousel.js"></script>
	<#include "footer.ftl">