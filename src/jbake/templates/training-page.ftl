<#include "header.ftl">
<#include "menu.ftl">
<div class = "album training py-5 bg-light">
          <div class="post-container container">
               <main class="content" role="main">
                   <article class="post">
                       <div class="inner inner-post">
                           <div id="push">
                               <header class="post-header">
                                   <h1 class="post-title"><#escape x as x?xml>${content.title}</#escape></h1>
                               </header>

                               <section class="post-content">
                                   ${content.body}
                                   <!-- <div class="paragraph">
                                    <p>Цена: ${content.price}</p>
                                   </div> -->
                               </section>
                           </div>
                           
                           <section class="training-form">
                                <h6 class="payment-sub-header">
                                    Якшо ви сплатили використовуючи кнопку зверху, то заявка на участь свориться автоматично
                                </h6>
                                <h6 class="payment-sub-header">
                                    Форма оплати працює тільки для Україні і країн Європи. Якшо ви з США, спробуйте Paypal або залиште заявку
                                </h6>
                                <br>
                                <h5>В разі виникнення додаткових питань, залиште заявку:</h4>
  
                                <form id="my-form" method="POST" action="https://formspree.io/myyngrqz" method="POST">
                                      <div class="field half first">
                                        <input type="text" name="name" id="name" placeholder="Ім'я" required>
                                      </div>
                                      <div class="field half">
                                        <input type="email" name="_replyto" id="email" placeholder="Email" required>
                                      </div>
                                      <div class="field half first">
                                        <input type="text" id="city-name" name="city" placeholder="Місто" required>
                                      </div>
                                      <input type="hidden" name="_subject" value="${content.title} - (${content.price})"/>
                                      <ul class="actions">
                                          <li>
                                            <button id="my-form-button" class="btn btn-dark">Відправити</button>
                                          </li>
                                    </ul>
                                    <p id="my-form-status"></p>
                                  </form>
                            </section>
                       </div>
                   </article>
               </main>
               <div class="row mt-2 pl-3 pr-3 training-banner-container">
                   <div class="col text-center pb-3 pt-2 training-banner">
                        <a href="/trainings">Переглянути інші тренінги: Playwright, Java API, Java UI, Python API, Jenkins CI, SQL</a>
                   </div>
               </div>
          </div>
       </div>

<script>
  window.addEventListener("DOMContentLoaded", function() {

// get the form elements defined in your form HTML above

var form = document.getElementById("my-form");
var button = document.getElementById("my-form-button");
var status = document.getElementById("my-form-status");

// Success and Error functions for after the form is submitted

function success() {
form.reset();
button.style = "display: none ";
status.innerHTML = "Дякую! Ваша заявка прийнята.";
}

     function error() {
status.innerHTML = "Something has gone wrong! Check that the form fields are not empty and the email is in the format example@domain";
}

    // handle the form submission event

    form.addEventListener("submit", function(ev) {
ev.preventDefault();
var data = new FormData(form);
ajax(form.method, form.action, data, success, error);
});
  });

  // helper function for sending an AJAX request

  function ajax(method, url, data, success, error) {
var xhr = new XMLHttpRequest();
xhr.open(method, url);
xhr.setRequestHeader("Accept", "application/json");
xhr.onreadystatechange = function() {
if (xhr.readyState !== XMLHttpRequest.DONE) return;
if (xhr.status === 200) {
success(xhr.response, xhr.responseType);
} else {
error(xhr.status, xhr.response, xhr.responseType);
}
    };
    xhr.send(data);
  }
</script>

<#include "footer.ftl">
