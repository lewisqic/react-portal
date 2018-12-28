import { url } from './Url';
import notify from "./Notify";

class Api {

    constructor(data) {

        return new Proxy(this, {
            get: function(api, field) {
                if (field in api) return api[field]; // normal case
                return function(...args) {

                    /*
                    field = method (get, post, etc)
                    args[0] = url
                    args[1] = params
                    args[2] = success callback
                    args[3] = error callback
                    */

                    axios({
                        method: field,
                        url: url(args[0]),
                        data: args[1] !== undefined && typeof args[1] === 'object' ? args[1] : {},
                    }).then((res) => {
                        if ( args[2] !== undefined && typeof args[2] === 'function' ) {
                            args[2](res.data);
                        }
                        if ( args[4] !== undefined && typeof args[4] === 'function' ) {
                            args[4](res.data);
                        }
                    }).catch((error) => {
                        if ( error.response.status === 401 ) {
                            window.location.reload();
                        } else {
                            if ( args[3] !== undefined && typeof args[3] === 'function' ) {
                                args[3](error.response.data);
                            } else {
                                notify('danger', error.response.data.message);
                            }
                            if ( args[4] !== undefined && typeof args[4] === 'function' ) {
                                args[4](error.response.data);
                            }
                        }
                    });

                };

            }
        });
    }


};

const api = new Api();
export default api;