import React, { Component } from 'react';
import {inject, observer} from "mobx-react";

class App extends Component {

    render() {

        return (
            <div className="text-center">
                <h1 className="mt-7 text-danger" style={{fontSize: '80px'}}>404</h1>
                <h3 className="mt-7 text-muted">Sorry, Page Not Found</h3>
            </div>
        );
    }

}

export default App