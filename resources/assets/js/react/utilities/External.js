import notify from "./Notify";
import {action} from "mobx";
import { path } from './Url';

class External {

    constructor(data) {

        return new Proxy(this, {
            get: function(api, field) {
                if (field in api) return api[field]; // normal case
                return function(...args) {

                    const params = args[1] !== undefined && typeof args[1] === 'object' ? args[1] : {};
                    const data = {};
                    data.method = field;
                    data.endpoint = args[0];
                    data.data = params;
                    axios({
                        method: 'POST',
                        url: path('external'),
                        responseType: 'json',
                        data: data,
                    }).then((res) => {
                        if ( args[2] !== undefined && typeof args[2] === 'function' ) {
                            args[2](res.data);
                        }
                        if ( args[4] !== undefined && typeof args[4] === 'function' ) {
                            args[4](res.data);
                        }
                    }).catch((error) => {
                        let message;
                        if ( error && error.response ) {
                            message = error.response.data || error.response.statusText;
                        } else {
                            message = error.message || 'Unknown Error';
                        }
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