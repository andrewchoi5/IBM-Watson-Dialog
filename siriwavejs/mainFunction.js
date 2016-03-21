
function myFunction() {
    
    <script src="siriwave.js"></script>
    <script src="siriwave9.js"></script>
    
     var $siri_classic = document.getElementById('container-classic');
    var SW = new SiriWave({
                          width: 259,
                          height: 50,
                          speed: 0.12,
                          amplitude: 1,
                          container: $siri_classic,
                          autostart: true,
                          });
    // var $siri_ios9 = document.getElementById('container-ios9');
    // var SW9 = new SiriWave9({
    // 	width: 259,
    // 	height: 40, 
    // 	speed: 0.2,
    // 	amplitude: 1,
    // 	container: $siri_ios9,
    // 	autostart: true,
    // });
    return SW
 }