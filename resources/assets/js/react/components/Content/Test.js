import React, { Component } from 'react';
import { toJS } from 'mobx';
import { inject, observer} from "mobx-react";
import notify from "../../utilities/Notify";

@inject('store') @observer
class Test extends Component {

    render() {
        const user = toJS(this.props.store.auth.user);
        let first_name = user ? user.first_name : '';

        if ( first_name ) {
            //notify('success', `Welcome, ${first_name}!`);
        }

        return (
            <h1>This is Test.js, Hello {first_name}</h1>
        );
    }

}

export default Test