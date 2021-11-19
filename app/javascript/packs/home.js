$(window).on('home#main:loaded', () => {
    let animation = anime({
        targets: '.delibird',
        translateX: -100,
        duration: 2000
    })

    $('.delibird').on("click", () => {movePresent()})

    function movePresent(){
        let animation = anime({
            targets: '.present',
            translateX: 1000,
            rotate: '1turn',
            duration: 3000,
        })
        setTimeout(function(){ window.location.href = $('.delibird').data('newpresent'); }, 1000)
    }


})