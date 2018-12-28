let root = '/account';

export const url = function(path = null) {
    let fullPath = (path.match(/^auth\//) ? '' : root) + (path !== null && path !== '/' ? '/' + path : '');
    return window.location.origin + fullPath;
};

export const path = function(path = null) {
    return root + (path !== null && path !== '/' ? '/' + path : '');
};

export const pathName = window.location.pathname.replace(/\/account(\/)*/, '');