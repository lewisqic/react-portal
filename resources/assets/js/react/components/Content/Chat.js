import React, { Component } from 'react';
import { Link } from "react-router-dom";
import {inject, observer} from "mobx-react";
import { path } from "../../utilities/Url";

@inject('store') @observer
class Chat extends Component {

    render() {

        return (
            <div>
                <h2>Chat</h2>
                <div className="card">
                    <div className="card-body">
                        <em>content coming soon</em>
                    </div>
                </div>
            </div>
        );
    }

}

export default Chat