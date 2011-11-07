jQuery(document).ready(function($) {
    /**$("a.zoombox").zoombox();* Or You can also use specific options
        opacity     : 0.8,              // Black overlay opacity
        duration    : 800,              // Animation duration
        width       : 600,              // Default width
        height      : 400,              // Default height
        autoplay : false                // Autoplay for video
    */

    $('a.zoombox').zoombox({
        theme       : 'zoombox',        //available themes : zoombox,lightbox, prettyphoto, darkprettyphoto, simple
        animation   : true,             // Do we have to animate the box ?
        gallery     : true,             // Allow gallery thumb view
    });

});
