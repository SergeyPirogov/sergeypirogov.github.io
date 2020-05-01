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
                                   <div class="paragraph">
                                    <p>Цена: ${content.price}</p>
                                   </div>
                               </section>

                           </div>

                           <section class="training-form">
                                              			<h4>Записаться</h4>
                                              			<h6 class="payment-sub-header">
                                              			    Способ оплаты зависит от страны проживания
                                              			</h6>
                                              			<form id="my-form" method="POST" action="https://formspree.io/automationremarks@gmail.com" method="POST">
                                              				<div class="field half first">
                                              					<input type="text" name="name" id="name" placeholder="Имя" required>
                                              				</div>
                                              				<div class="field half">
                                              					<input type="email" name="_replyto" id="email" placeholder="Email" required>
                                              				</div>

                                                           <div class="field half first">
                                                               <input type="text" id="city-name" name="city" placeholder="Город проживания" required>
                                                           </div>

                                              				<div class="field"><grammarly-extension style="position: absolute; top: 0px; left: 0px; pointer-events: none;" class="_1KJtL"><div data-grammarly-part="highlights" class="u_fNK" style="position: absolute; top: 0px; left: 0px;"><div style="box-sizing: content-box; top: 0px; left: 0px; width: 833.703px; height: 79px; position: relative; pointer-events: none; overflow: hidden; border: 0px; border-radius: 0px; padding: 0px; margin: 0px;"><div style="position: absolute; top: 0px; left: 0px;"><div style="height: 1159px; width: 2754px;"><div></div><div></div></div></div></div></div><div data-grammarly-part="button" class="u_fNK" style="position: absolute; top: 0px; left: 0px;"><div style="box-sizing: content-box; top: 0px; left: 0px; width: 833.703px; height: 79px; position: relative; pointer-events: none; overflow: hidden; border: 0px; border-radius: 0px; padding: 0px; margin: 0px;"><div style="position: absolute; transform: translate(-100%, -100%); top: 71px; left: 825.703px; width: auto; height: auto; pointer-events: all;"><div style="flex-direction: row; display: flex; pointer-events: auto;"><div style="position: relative;"><div class="_2vV1Z _3uWIx" style="position: absolute; right: 0px; top: 0px;"><div class="_2mmtW"><div class="-mjUa"><div class="_1NNY0 _3PC-V" style="transform: scale(1);">0</div>&nbsp;Advanced issue found<div class="SY83w _5pAkg">▲</div><div class="_3pmCo"></div></div></div></div></div><div><div class="_5WizN _1QzSN"><div class="_3YmQx"><div title="Protected by Grammarly" class="_3QdKe">&nbsp;</div></div></div></div></div></div></div></div></grammarly-extension>
                                              					<div class="textarea-wrapper"><textarea name="message" id="message" placeholder="Сообщение" rows="1" style="overflow: hidden; resize: none; height: 79px;" spellcheck="false"></textarea></div>
                                              				</div>
                                              				<ul class="actions">
                                              					<li>
                                              						<button id="my-form-button" class="btn btn-dark">Отправить</button>
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

<#include "footer.ftl">