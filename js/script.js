// $(function() {

//     try {
//         var scWidget = window['SC'].Widget(document.querySelector('iframe'));
//         scWidget.bind(window['SC'].Widget.Events.READY, () => {});

//         const seekToTime = (timeCode) => {
//             let a = timeCode.split(':');
//             let seconds = (+a[0]) * 60 * 60 + (+a[1]) * 60 + (+a[2]);
//             let ms = seconds * 1000;
//             scWidget.seekTo(ms);
//             scWidget.play();
//         }

//         $("a.timecode").click((e) => {
//            seekToTime($(event.target).text())
//         })
//     } catch(error){
//         console.warn(error);
//     }
// });
