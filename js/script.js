$(function() {

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
              status.innerHTML = "Что-то пошло не так! Проверьте, что поля фомы не пустые и имейл в формате example@domain";
            }

            // handle the form submission event

        try {
            form.addEventListener("submit", function(ev) {
              ev.preventDefault();
              var data = new FormData(form);
              ajax(form.method, form.action, data, success, error);
            });
        } catch(error){
            console.error(error);
        }
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

    try {
        var scWidget = window['SC'].Widget(document.querySelector('iframe'));
        scWidget.bind(window['SC'].Widget.Events.READY, () => {});

        const seekToTime = (timeCode) => {
            let a = timeCode.split(':');
            let seconds = (+a[0]) * 60 * 60 + (+a[1]) * 60 + (+a[2]);
            let ms = seconds * 1000;
            scWidget.seekTo(ms);
            scWidget.play();
        }

        $("a.timecode").click((e) => {
           seekToTime($(event.target).text())
        })
    } catch(error){
                console.error(error);
    }
});


