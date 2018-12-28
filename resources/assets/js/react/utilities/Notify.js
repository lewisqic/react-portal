import Noty from 'noty';

const Notify = function(type, message, timeout) {

    type = type === 'danger' ? 'error' : type;
    let icon = 'fa-info-circle';
    switch ( type ) {
        case 'success':
            icon = 'fa-check';
            break;
        case 'info':
            icon = 'fa-info-circle';
            break;
        case 'warning':
        case 'danger':
        case 'error':
            icon = 'fa-exclamation-triangle';
            break;
    }

    new Noty({
        layout   : 'topRight',
        theme    : 'nest',
        progressBar: true,
        closeWith: ['click', 'button'],
        type: type,
        timeout: timeout === undefined ? 2000 : (timeout < 1 ? false : timeout),
        text: '<i class="fa ' + icon + ' mr-1"></i> ' + message
    }).show();

};

export default Notify