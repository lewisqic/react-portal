import React, { Component } from 'react';
import {inject, observer} from "mobx-react";
import external from "../../utilities/External";
import {observable} from "mobx";

@inject('store') @observer
class ApiExample extends Component {

    @observable apiResponse = null;

    render() {

        external('url', (res) => {
            this.apiResponse = res;
        });

        return (
            <div>
                <h2>API Connection Example</h2>
                <div className="card">
                    <div className="card-body">

                        { this.apiResponse ? <div>{ this.apiResponse }</div> : <em>waiting on API response...</em> }

                    </div>
                </div>
            </div>
        );
    }

}

export default ApiExample