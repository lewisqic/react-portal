import React, { Component } from 'react';
import { toJS } from 'mobx';
import { inject, observer} from "mobx-react";
import {Link} from "react-router-dom";
import {path} from "../../../utilities/Url";

@inject('store') @observer
class UserSubmenu extends Component {

    render() {

        const user = toJS(this.props.store.auth.user);
        const first_name = user ? user.first_name : null;
        const role = user ? user.role : null;

        return (
            <div>
                <h4>Welcome, { first_name }!</h4>
                <hr/>
                <ul>
                    <li><Link to={ path('profile') }>My Profile</Link></li>
                    { role === 'Admin' ? <li><Link to={ path('users') }>Manage Users</Link></li> : null }
                    <li><Link to={ path('billing') }>Billing & Subscription</Link></li>
                    <li className="footer"><a href="/auth/logout"><i className="far fa-power-off text-danger mr-1" /> Sign Out</a></li>
                </ul>
            </div>
        );
    }

}

export default UserSubmenu