import React, { Component } from 'react';
import {Link} from "react-router-dom";
import {path} from "../../../utilities/Url";

class KaseyaSubmenu extends Component {

    render() {

        return (
            <div>
                <h4>Kaseya</h4>
                <hr/>
                <ul>
                    <li><Link to={ path('kaseya') }>Landing</Link></li>
                    <li><Link to={ path('kaseya/test') }>Test Page 1</Link></li>
                </ul>
            </div>
        );
    }

}

export default KaseyaSubmenu