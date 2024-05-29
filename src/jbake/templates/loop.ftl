<div class="col mb-3 d-flex">
    <div class="card index-card">
        <#if post.image??>
            <a href="${post.uri}"><img src="${post.image}" alt=""/></a>
        </#if>
        <div class="card-body d-flex flex-column">
          <p class="card-text">
                  <small class="text-muted"><span class="post-date">${post.date?string("dd MMMM yyyy")}</span></small>
          </p>
          <h5 class="card-title index-cart-title">
            <a href="/${post.uri}">
                <#escape x as x?xml>${post.title}</#escape>
            </a>
          </h5>

          <hr class="mt-auto">

          <p class="card-text">
            <#if post.summary??>
               <#escape x as x?xml>${post.summary}</#escape>
            </#if>
          </p>
          <a href="/${post.uri}" class="stretched-link mt-auto card-link">
            Читати<i class="fa fa-chevron-right ml-1"></i>
          </a>
        </div>
    </div>
</div>
