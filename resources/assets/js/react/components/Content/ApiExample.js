import React, { Component } from 'react';
import {inject, observer} from "mobx-react";

@inject('store') @observer
class ApiExample extends Component {

    render() {



        return (
            <div>
                <h2>API Connection Example</h2>
                <div className="card">
                    <div className="card-body">



                    </div>
                </div>
            </div>
        );
    }

}

export default ApiExample