import React, { Component } from 'react';
import { inject, observer } from 'mobx-react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import { path } from '../utilities/Url';

import AppLayout from './Layouts/AppLayout';
import BaseLayout from './Layouts/BaseLayout';

import Dashboard from "./Content/Dashboard";
import Profile from "./Content/User/Profile";
import UsersList from "./Content/User/UsersList";
import Billing from "./Content/User/Billing";
import KaseyaIndex from "./Content/Kaseya/Index";
import NoMatch from "./Content/404";

@inject('store') @observer
class Router extends Component {

    componentDidMount() {
        const auth = this.props.store.auth;
        //auth.loadUser();
    }

    render() {
        const auth = this.props.store.auth;
        return (
            <BaseLayout>
                <BrowserRouter>
                    <AppLayout>
                        <Switch>
                            <Route exact path={ path('/') } component={ Dashboard } />
                            <Route exact path={ path('profile') } component={ Profile } />
                            <Route exact path={ path('users') } component={ UsersList } />
                            <Route exact path={ path('billing') } component={ Billing } />
                            <Route exact path={ path('kaseya') } component={ KaseyaIndex } />
                            <Route component={NoMatch} />
                        </Switch>
                    </AppLayout>
                </BrowserRouter>
            </BaseLayout>
        );

    }

}

export default Router;