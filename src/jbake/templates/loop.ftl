<div class="card index-card">
    <#if post.image??>
        <img class="card-img-top" src="images/risovach_ru.jpg" alt="Card image cap">
    </#if>
    <div class="card-body">
      <p class="card-text">
              <small class="text-muted"><span class="post-date">${post.date?string("dd MMMM yyyy")}</span></small>
      </p>
      <h5 class="card-title"><a href="/${post.uri}"><#escape x as x?xml>${post.title}</#escape></a></h5>

      <hr>

      <p class="card-text">
        <#if post.summary??>
           <#escape x as x?xml>${post.summary}</#escape>
        </#if>
      </p>
      <a href="/${post.uri}" class="card-link">
        Читать<i class="fa fa-chevron-right ml-1"></i>
      </a>
    </div>
</div>