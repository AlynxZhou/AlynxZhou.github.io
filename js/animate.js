$(document).ready(function() {
    var delay = 1;
    var DELAY_STEP = 200;
    var animationOptions = {opacity:1, top:0};

    function animateMain() {
        var dfd = $.Deferred();
        var els = $('.animate-init');
        var size = els.size();

        els.each(function(index, el) {
            delay++;
            $(el).delay(index * DELAY_STEP).animate(animationOptions);
            (size - 1 === index) && dfd.resolve();
        });

        return dfd.promise();
    }

    animateMain();
});
