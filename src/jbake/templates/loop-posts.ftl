<div class="post-list">
    <div class="main_banner">
        <div class="training_banner">
           <a href="/trainings">Доступные тренинги по автоматизации тестирования: Java API, Java UI, Python API, Jenkins CI</a>
        </div>
    </div>

	<div id="push">

        <#list posts as post>
            <#if (post.status == "published")>
                <#include "loop.ftl">
            </#if>
        </#list>

	</div>
</div>