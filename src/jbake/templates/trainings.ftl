<#include "header.ftl">

    <#include "menu.ftl">

    <main role="main">

      <section class="jumbotron archive text-center">
        <div class="container trainings">
          <h1 class="jumbotron-heading">Доступные тренинги по автоматизации тестирования</h1>
           <p class="lead text-muted">
          Тренинги в которых показано как построить проект, с чего начать и как довести все до CI сервера.
          Отличная возможность посмотреть на идеи и подходы и сделать автоматизацию на своем проекте лучше.
          </p>
        </div>
      </section>

      <div class="album py-5 bg-light ">
        <div class="container">
          <div id="push" class="row post-list row-cols-1 row-cols-md-4">

            <div class="col mb-3 d-flex">
                <div class="card training-card">
                    <div class="card-body d-flex flex-column">
                      <h5 class="card-title index-cart-title">
                        <a href="">
                            API automation Java
                        </a>
                      </h5>
                      <hr class="mt-auto">
                      <p class="card-text">
                        Технологии: Java 8, Rest Assured, Gradle, Allure, Jenkins CI
                      </p>

                      <h6 class="card-subtitle mb-2 text-muted"> Цена: 50$</h6>
                    </div>

                    <div class="card-footer bg-transparent">
                        <a href="/trainings/api-java" target="blank" class="stretched-link mt-auto card-link">
                                             Записаться<i class="fa fa-chevron-right ml-1"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col mb-3 d-flex">
                <div class="card training-card">
                                    <div class="card-body d-flex flex-column">
                                      <h5 class="card-title index-cart-title">
                                        <a href="">
                                            UI automation Java
                                        </a>
                                      </h5>
                                      <hr class="mt-auto">
                                      <p class="card-text">
                                        Технологии: Java 8, Selenide, Gradle, Allure, Jenkins CI
                                      </p>
                                      <h6 class="card-subtitle mb-2 text-muted"> Цена: 50$</h6>
                                    </div>
                                    <div class="card-footer bg-transparent">
                                            <a href="/trainings/ui-java" target="blank" class="stretched-link mt-auto card-link">
                                                                            Записаться<i class="fa fa-chevron-right ml-1"></i>
                                            </a>
                                    </div>
                </div>
            </div>
            <div class="col mb-3 d-flex">
                <div class="card training-card">
                                                    <div class="card-body d-flex flex-column">
                                                      <h5 class="card-title index-cart-title">
                                                        <a href="">
                                                            API automation Python
                                                        </a>
                                                      </h5>
                                                      <hr class="mt-auto">
                                                      <p class="card-text">
                                                        Технологии: Python 3, Allure, pytest, Jenkins
                                                      </p>
                                                      <h6 class="card-subtitle mb-2 text-muted">Цена: 50$</h6>
                                                    </div>

                                                     <div class="card-footer bg-transparent">
                                                      <a href="/trainings/api-python" target="blank" class="stretched-link mt-auto card-link">
                                                                                                             Записаться<i class="fa fa-chevron-right ml-1"></i>
                                                          </a>
                                                     </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

<#include "footer.ftl">