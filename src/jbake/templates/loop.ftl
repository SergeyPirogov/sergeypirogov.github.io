<div class="col-md-4 post">
      <div class="card mb-4 box-shadow">
         <div class="card-body post-list-item">
            <span class="post-meta">
            	<span class="post-date">${post.date?string("dd MMMM yyyy")}</span>
            </span>
            <h2 class="post-title">
                <a href="/${post.uri}"><#escape x as x?xml>${post.title}</#escape></a>
            </h2>

            <hr>

            <p class="post-excerpt">
                  <#if post.summary??>
                     <#escape x as x?xml>${post.summary}</#escape>
                  </#if>
            </p>

            <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                     <button type="button" class="btn btn-sm btn-outline-secondary">Читать</button>
                </div>
                <small class="text-muted"></small>
            </div>
         </div>
      </div>
</div>