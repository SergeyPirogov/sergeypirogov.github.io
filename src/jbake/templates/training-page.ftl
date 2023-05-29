<#include "header.ftl">

  <#include "menu.ftl">

   <div class="album training py-5 bg-light">
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
                                    Форма оплати працює тільки для Україні і країн Європи. Якшо ви з США, залиште заявку
                                </h6>
                                <h4>Залишити заявку</h4>
  
                                <form id="my-form" method="POST" action="https://formspree.io/myyngrqz" method="POST">
                                      <div class="field half first">
                                        <input type="text" name="name" id="name" placeholder="Name" required>
                                      </div>
                                      <div class="field half">
                                        <input type="email" name="_replyto" id="email" placeholder="Email" required>
                                      </div>

                                      <div class="field half first">
                                        <input type="text" id="city-name" name="city" placeholder="City from" required>
                                      </div>

                                      <div class="field"><grammarly-extension style="position: absolute; top: 0px; left: 0px; pointer-events: none;" class="_1KJtL"><div data-grammarly-part="highlights" class="u_fNK" style="position: absolute; top: 0px; left: 0px;"><div style="box-sizing: content-box; top: 0px; left: 0px; width: 833.703px; height: 79px; position: relative; pointer-events: none; overflow: hidden; border: 0px; border-radius: 0px; padding: 0px; margin: 0px;"><div style="position: absolute; top: 0px; left: 0px;"><div style="height: 1159px; width: 2754px;"><div></div><div></div></div></div></div></div><div data-grammarly-part="button" class="u_fNK" style="position: absolute; top: 0px; left: 0px;"><div style="box-sizing: content-box; top: 0px; left: 0px; width: 833.703px; height: 79px; position: relative; pointer-events: none; overflow: hidden; border: 0px; border-radius: 0px; padding: 0px; margin: 0px;"><div style="position: absolute; transform: translate(-100%, -100%); top: 71px; left: 825.703px; width: auto; height: auto; pointer-events: all;"><div style="flex-direction: row; display: flex; pointer-events: auto;"><div style="position: relative;"><div class="_2vV1Z _3uWIx" style="position: absolute; right: 0px; top: 0px;"><div class="_2mmtW"><div class="-mjUa"><div class="_1NNY0 _3PC-V" style="transform: scale(1);">0</div>&nbsp;Advanced issue found<div class="SY83w _5pAkg">▲</div><div class="_3pmCo"></div></div></div></div></div><div><div class="_5WizN _1QzSN"><div class="_3YmQx"><div title="Protected by Grammarly" class="_3QdKe">&nbsp;</div></div></div></div></div></div></div></div></grammarly-extension>
                                        <div class="textarea-wrapper"><textarea name="message" id="message" placeholder="Message" rows="1" style="overflow: hidden; resize: none; height: 79px;" spellcheck="false"></textarea></div>
                                      </div>
                                      <input type="hidden" name="_subject" value="${content.title} - (${content.price})"/>
                                      <ul class="actions">
                                          <li>
                                            <button id="my-form-button" class="btn btn-dark">Submit</button>
                                          </li>
                                    </ul>
                                    <p id="my-form-status"></p>
                                  </form>
                            </section>

                       </div>
                   </article>
               </main>
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
                  status.innerHTML = "Спасибо! Ваша заявка принята.";
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
