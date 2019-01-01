import React, { Component } from 'react';
import { inject, observer } from 'mobx-react';
import { BrowserRouter, Route, Switch, Redirect } from 'react-router-dom';
import { path } from '../utilities/Url';

import AppLayout from './Layouts/AppLayout';
import BaseLayout from './Layouts/BaseLayout';

import Dashboard from "./Content/Dashboard";
import Chat from "./Content/Chat";
import Tickets from "./Content/Tickets";
import ApiExample from "./Content/ApiExample";
import Profile from "./Content/User/Profile";
import UsersList from "./Content/User/UsersList";
import Billing from "./Content/User/Billing";
import KaseyaIndex from "./Content/Kaseya/Index";
import KaseyaTest from "./Content/Kaseya/Test";
import NoMatch from "./Content/404";
import { toJS } from "mobx";

@observer
class Router extends Component {

    render() {
        return (
            <BaseLayout>
                <BrowserRouter>
                    <AppLayout>
                        <Switch>
                            <Route exact path={ path('/') } component={Dashboard}/>
                            <Route exact path={ path('chat') } component={Chat}/>
                            <Route exact path={ path('tickets') } component={Tickets}/>
                            <Route exact path={ path('api-example') } component={ApiExample}/>
                            <Route exact path={ path('profile') } component={Profile}/>
                            <Route exact path={ path('users') } component={UsersList}/>
                            <Route exact path={ path('billing') } component={Billing}/>
                            <Route exact path={ path('kaseya') } component={KaseyaIndex}/>
                            <Route exact path={ path('kaseya/test') } component={KaseyaTest}/>
                            <Route component={ NoMatch }/>
                        </Switch>
                    </AppLayout>
                </BrowserRouter>
            </BaseLayout>
        );

    }

}

export default Router;