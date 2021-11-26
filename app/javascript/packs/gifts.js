$(window).on('gifts#new:loaded', () => {
    console.log("aaaa")
    anime({
        targets: ".gift",
        translateY: [15, -15],
        loop: true,
        direction: 'alternate',
        duration: 1800,
        easing: 'easeInOutSine'
    })
});