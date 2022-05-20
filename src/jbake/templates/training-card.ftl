<div class="col-md-4 mb-3 d-flex">
            <a class="linked-card ${content.state}" target="blank" href="/${content.uri}">
                <div class="card h-100 training-card">
                    <div class="card-body d-flex flex-column">
                      <h5 class="card-title index-cart-title">
                        <!-- <a href="/${content.uri}"> -->
                            ${content.title}
                        <!-- </a> -->
                      </h5>
                      <hr class="mt-auto">
                      <p class="card-text">
                         ${content.summary}
                      </p>

                      <h6 class="card-subtitle mb-2 text-muted">${content.price}</h6>
                    </div>

                    <div class="card-footer bg-transparent">
                        <!-- <a href="/${content.uri}" target="blank" class="stretched-link mt-auto card-link"> -->
                                             Подробнее<i class="fa fa-chevron-right ml-1"></i>
                        <!-- </a> -->
                    </div>
                </div>
                </a>
            </div>