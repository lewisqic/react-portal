import React, { Component } from 'react';
import { toJS } from 'mobx';
import { inject, observer} from "mobx-react";
import { Link } from "react-router-dom";
import { path } from "../../utilities/Url";

@inject('store') @observer
class HeaderLinks extends Component {

    render() {
        const user = toJS(this.props.store.auth.user);
        const role = user ? user.role : null;

        return (
            <div className="content-header">
                <div className="row">
                    <div className="col-sm-4">
                        <img src="/images/logo-example.png" />
                    </div>
                    <div className="col sm-8">
                        <ul className="menu">
                            <li><Link to={ path('/') }>Dashboard</Link></li>
                            { role === 'Admin' ? <li><Link to={ path('chat') }>Chat With Engineer</Link></li> : null }
                            { role === 'Admin' ? <li className="ticket"><Link to={ path('tickets') }>Open a Ticket</Link></li> : null }
                            { role === 'Admin' ? <li><a href="#" onClick={ this.props.toggleNotificationBar }><i className="fa fa-bars fa-lg" /></a></li> : null }
                        </ul>
                    </div>
                </div>
            </div>
        );
    }

}

export default HeaderLinks