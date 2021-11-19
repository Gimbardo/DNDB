$(document).on('turbolinks:load', () => {
    let body_data = $('body').data();
    /*global functions */

    // Eventi
    $(window).trigger(body_data.controller + ':loaded')
    $(window).trigger(body_data.controller + '#' + body_data.action + ':loaded')

});
