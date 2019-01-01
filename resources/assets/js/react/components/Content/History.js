import React, { Component } from 'react';
import { Link } from "react-router-dom";
import {inject, observer} from "mobx-react";
import { path } from "../../utilities/Url";

@inject('store') @observer
class History extends Component {

    render() {

        return (
            <div>
                <h2>History</h2>
                <div className="card">
                    <div className="card-body">
                        <em>content coming soon</em>
                    </div>
                </div>
            </div>
        );
    }

}

export default History