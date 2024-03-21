onload = () =>{
        document.body.classList.remove("container");
};

// var promise = document.querySelector('audio').play();

// if (promise !== undefined) {
//   promise.then(_ => {
//     // Autoplay started!
//   }).catch(error => {
//     // Autoplay was prevented.
//     // Show a "Play" button so that user can start playback.
//   });
// }

// document.addEventListener('DOMContentLoaded', function() {
//         var audio = document.getElementById('audio');
//         audio.setAttribute('muted', true); // Forzar el audio silenciado
//         audio.setAttribute('autoplay', true); // Forzar la reproducción automática
      
//         // Reproducir el audio cuando se cargue la página
//         audio.play().then(function() {
//           // Reproducción exitosa
//         }).catch(function(error) {
//           // Manejar errores de reproducción
//           console.error('Error al reproducir audio:', error);
//         });
//       });

// document.addEventListener('DOMContentLoaded', function() {
//         var reproducirAudio = document.getElementById('reproducirAudio');
//         var audio = document.getElementById('audio');
      
//         // Función para reproducir el audio al hacer clic en el div
//         reproducirAudio.addEventListener('click', function() {
//           audio.play().then(function() {
//             // Reproducción exitosa
//             console.log('Audio reproduciéndose');
//           }).catch(function(error) {
//             // Manejar errores de reproducción
//             console.error('Error al reproducir audio:', error);
//           });
//         });
//       });

      document.addEventListener('DOMContentLoaded', function() {
        var controlAudio = document.getElementById('reproducirAudio');
        var audio = document.getElementById('audio');
        var audioPlaying = false;
        var firstPlay = true;
        var currentTime = 0;
        
        controlAudio.addEventListener('click', function() {
          if (!audioPlaying) {
                if (firstPlay) {
                        audio.currentTime = 47;
                        firstPlay = false;
                }
            audio.play().then(function() {
              // Reproducción exitosa
              console.log('Audio reproduciéndose');
              audioPlaying = true;
              controlAudio.textContent = 'Haz clic para pausar el audio';
            }).catch(function(error) {
              // Manejar errores de reproducción
              console.error('Error al reproducir audio:', error);
            });
          } else {
            audio.pause();
            audioPlaying = false;
            controlAudio.textContent = 'Haz clic para reproducir el audio';
          }
        });
      });
