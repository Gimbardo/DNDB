$(window).on('home#main:loaded', () => {
    let animation = anime({
        targets: '.delibird',
        translateX: -20,
        rotate: function() {
            return [5, -10, 5]
        },
        easing: function(el, i, total) {
            return function(t) {
                return Math.pow(Math.sin(t * (i + 0.5)), total);
            }
        },
        direction: 'alternate',
        duration: 1000,
        loop: true
    })

    $('.fight').on("click", () => {movePresent()})

    function movePresent(){
        let animation = anime({
            targets: '.present',
            translateX: [380, 1000],
            rotate: '1turn',
            duration: 3000,
        })
        setTimeout(function(){ window.location.href = $('.delibird').data('newpresent'); }, 1000)
    }


})