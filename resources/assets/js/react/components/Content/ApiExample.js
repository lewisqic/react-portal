import React, { Component } from 'react';
import {inject, observer} from "mobx-react";
import {observable} from "mobx";
import external from "../../utilities/External";
import notify from "../../utilities/Notify";

@observer
class ApiExample extends Component {

    @observable apiResponse = null;

    render() {

        const endpoint = 'https://apipoc101.azurewebsites.net/EpPocApi/1.0.1/agent';
        const data = { source: 1 };
        if ( this.apiResponse === null ) {
            setTimeout(() => {
                external.get(endpoint, data, (res) => {
                    notify('success', 'API example call completed!');
                    this.apiResponse = res;
                });
            }, 1000);
        }

        return (
            <div>
                <h2>API Connection Example</h2>

                <div className="card">
                    <div className="card-body">
                        Endpoint: <code>{ endpoint }</code><br/>
                        Data: <code>{ JSON.stringify(data) }</code>
                    </div>
                </div>

                <div className="card">
                    <div className="card-body">

                        { this.apiResponse ? <div>
                                <h5>API Response:</h5>
                                <pre style={ {color: '#e83e8c'} }>{ JSON.stringify(this.apiResponse, undefined, 4) }</pre>
                            </div> :
                            <em>Waiting for API response...</em>
                        }

                    </div>
                </div>
            </div>
        );
    }

}

export default ApiExample