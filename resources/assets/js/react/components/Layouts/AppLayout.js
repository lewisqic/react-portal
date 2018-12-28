import React, { Component } from 'react';
import { NavLink, Link, Route } from "react-router-dom";
import { toJS } from 'mobx';
import { inject, observer } from "mobx-react";
import { boundMethod } from 'autobind-decorator';
import { CSSTransition } from 'react-transition-group'
import { path, pathName } from "../../utilities/Url";

import Sidebar from './Sidebar';
import HeaderLinks from './HeaderLinks';

import UserSubmenu from '../Content/User/Submenu';
import KaseyaSubmenu from '../Content/Kaseya/Submenu';

class AppLayout extends Component {

    constructor(props) {
        super(props);
        this.state = { showSubmenu: false, whichSubmenu: null, showNotificationBar: false };
    }

    componentWillMount() {
        document.addEventListener('mouseup', this.handleOutsideClick, false);
    }

    componentWillUnMount() {
        document.removeEventListener('mouseup', this.handleOutsideClick, false);
    }

    @boundMethod
    setUserLogoRef(ref) {
        this.userLogo = ref;
    }

    @boundMethod
    setKaseyaLogoRef(ref) {
        this.kaseyaLogo = ref;
    }

    @boundMethod
    handleOutsideClick(e) {
        if ( this.submenu && (
            (this.userLogo && this.userLogo.contains(e.target)) ||
            (this.kaseyaLogo && this.kaseyaLogo.contains(e.target))
        ) ) {
            return;
        }
        if ( this.notificationBar && this.notificationBar.contains(e.target) ) {
            return;
        }
        this.setState({showSubmenu: false, showNotificationBar: false});
    }

    @boundMethod
    showSubmenu(e, submenu) {
        e.preventDefault();
        this.setState({showSubmenu: this.state.whichSubmenu !== submenu, whichSubmenu: submenu});
    }
    
    @boundMethod
    toggleNotificationBar(e) {
        e.preventDefault();
        this.setState({showNotificationBar: !this.state.showNotificationBar});
    }
    
    render() {
        const submenus = {
            user: UserSubmenu,
            kaseya: KaseyaSubmenu
        };
        const Submenu = submenus[this.state.whichSubmenu || 'user'];

        return (
            <div className="app-layout">
                <Sidebar
                    showSubmenu={this.showSubmenu}
                    setUserLogoRef={ this.setUserLogoRef }
                    setKaseyaLogoRef={ this.setKaseyaLogoRef }
                />
                <CSSTransition
                    in={this.state.showSubmenu}
                    timeout={300}
                    classNames={{
                        appear: 'submenu submenu-appear',
                        appearActive: 'submenu submenu-active-appear',
                        enter: 'submenu animated slideInLeft',
                        enterActive: 'submenu submenu-active-enter',
                        enterDone: 'submenu submenu-enter-done',
                        exit: 'submenu animated slideOutLeft',
                        exitActive: 'submenu submenu-active-exit',
                        exitDone: 'submenu hide submenu-exit-done',
                    }}
                    onExited={() => {
                        this.setState({whichSubmenu: null});
                    }}
                >
                    <div className="hide" ref={submenu => this.submenu = submenu}>
                        <Submenu />
                    </div>
                </CSSTransition>
                <div className="content">
                    <HeaderLinks toggleNotificationBar={ this.toggleNotificationBar } />
                    <div className="content-main">
                        { this.props.children }
                    </div>
                </div>
                <CSSTransition
                    in={this.state.showNotificationBar}
                    timeout={300}
                    classNames={{
                        appear: 'notification-bar notification-bar-appear',
                        appearActive: 'notification-bar notification-bar-active-appear',
                        enter: 'notification-bar animated slideInRight',
                        enterActive: 'notification-bar notification-bar-active-enter',
                        enterDone: 'notification-bar notification-bar-enter-done',
                        exit: 'notification-bar animated slideOutRight',
                        exitActive: 'notification-bar notification-bar-active-exit',
                        exitDone: 'notification-bar hide notification-bar-exit-done',
                    }}
                    onExited={() => {

                    }}
                >
                    <div className="hide" ref={notificationBar => this.notificationBar = notificationBar}>
                        <h4>
                            <a href="#" onClick={ this.toggleNotificationBar }><i className="fal fa-times-circle" /></a>
                            Notifications
                        </h4>
                        <div className="notifications">
                            <ul>
                                <li>
                                    <strong><i className="fal fa-exclamation-triangle" /> Threat Title</strong> - Rockstar analytics graphical user infterface iPad traction leverage success backing sales.
                                </li>
                                <li>
                                    <strong><i className="fal fa-exclamation-triangle" /> Threat Title</strong> - Rockstar analytics graphical user infterface iPad traction leverage success backing sales.
                                </li>
                            </ul>
                        </div>
                        <div className="button-wrapper">
                            <a href="#">Tickets</a>
                        </div>
                        <div className="button-wrapper">
                            <a href="#">Live Chat</a>
                        </div>
                        <div className="button-wrapper">
                            <a href="#">History</a>
                        </div>
                    </div>
                </CSSTransition>
            </div>
        );

    }

}

export default AppLayout;