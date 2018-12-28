import React, { Component } from 'react';
import { Link } from "react-router-dom";
import {inject, observer} from "mobx-react";
import { path } from "../../utilities/Url";

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
                <div className="card">
                    <div className="card-body">
                        <h4>To view a demonstration the external API connection, <Link to={ path('api-example') }>Click Here</Link>.</h4>
                    </div>
                </div>
            </div>
        );
    }

}

export default App