import React, { Component } from 'react';
import { toJS } from 'mobx';
import { inject, observer} from "mobx-react";

@inject('store') @observer
class Test extends Component {

    render() {



        return (
            <div>
                <h2>Kaseya Test Page</h2>
                <div className="row mb-5">
                    <div className="col-sm-12">
                        <div className="card">
                            <div className="card-body">
                                <em>content coming soon</em>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }

}

export default Test