import React, { Component } from 'react';
import { toJS } from 'mobx';
import { inject, observer} from "mobx-react";
import { Link } from "react-router-dom";
import { path } from "../../utilities/Url";

@inject('store') @observer
class Sidebar extends Component {

    render() {
        const user = toJS(this.props.store.auth.user);
        const role = user ? user.role : null;
        return (
            <div className="sidebar">
                <div className="menu">
                    <a href="#" onClick={ e => this.props.showSubmenu(e, 'user') } ref={ userLogo => this.props.setUserLogoRef(userLogo) }>
                        <span className="fa-stack fa-2x">
                            <i className="fal fa-circle fa-stack-2x" />
                            <i className="fas fa-user-edit fa-stack-1x" style={{marginLeft: '5px'}} />
                        </span>
                    </a>
                    { role === 'Admin' ? <a href="#" onClick={ e => this.props.showSubmenu(e, 'kaseya') } ref={ kaseyaLogo => this.props.setKaseyaLogoRef(kaseyaLogo) }>
                        <img src="/images/logos/logo-kaseya.png" />
                    </a> : null }
                </div>
            </div>
        );
    }

}

export default Sidebar