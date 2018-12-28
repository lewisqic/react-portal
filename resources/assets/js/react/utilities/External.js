import notify from "./Notify";

class External {

    constructor(data) {

        return new Proxy(this, {
            get: function(api, field) {
                if (field in api) return api[field]; // normal case
                return function(...args) {

                    let url = args[0];
                    if ( field === 'get' && typeof args[1] === 'object' ) {
                        let queryString = Object.keys(args[1]).map(key => key + '=' + args[1][key]).join('&');
                        url += '?' + queryString;
                    }

                    axios({
                        method: field,
                        url: url,
                        responseType: 'json',
                        data: args[1] !== undefined && typeof args[1] === 'object' ? args[1] : {},
                    }).then((res) => {
                        if ( args[2] !== undefined && typeof args[2] === 'function' ) {
                            args[2](res.data);
                        }
                        if ( args[4] !== undefined && typeof args[4] === 'function' ) {
                            args[4](res.data);
                        }
                    }).catch((error) => {
                        const message = error.response.data || error.response.statusText;
                        if ( args[3] !== undefined && typeof args[3] === 'function' ) {
                            args[3](message);
                        } else {
                            notify('danger', JSON.stringify(message));
                        }
                        if ( args[4] !== undefined && typeof args[4] === 'function' ) {
                            args[4](message);
                        }
                    });

                };

            }
        });
    }


};

const external = new External();
export default external;