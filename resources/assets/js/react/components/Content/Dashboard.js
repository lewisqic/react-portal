import React, { Component } from 'react';
import {inject, observer} from "mobx-react";

@inject('store') @observer
class App extends Component {

    render() {



        return (
            <div>
                <h2>Dashboard</h2>
                <div className="card">
                    <div className="card-body">
                        Placeholder for the customer portal dashboard page.
                    </div>
                </div>
            </div>
        );
    }

}

export default App