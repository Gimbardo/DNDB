$('document').ready( () => {
    let body_data = $('body').data();
    /*global functions */

    console.log(body_data)
    // Eventi
    $(window).trigger(body_data.controller + ':loaded')
    $(window).trigger(body_data.controller + '#' + body_data.action + ':loaded')

});
