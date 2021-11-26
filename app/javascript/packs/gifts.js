$(window).on('gifts#new:loaded', () => {
    console.log("aaaa")
    anime({
        targets: ".gift",
        translateY: -30,
        loop: true,
        direction: 'alternate',
        duration: 2000,
        easing: 'easeInOutSine'
    })
});