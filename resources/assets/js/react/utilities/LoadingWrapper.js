import React, { Component } from 'react';

class LoadingWrapper extends Component {

    render() {

        let loading = this.props.loading !== undefined ? this.props.loading : false;
        return (
            <div>
                { loading ?
                    <i className="fa fa-circle-o-notch fa-spin text-muted"></i> :
                    this.props.children
                }
            </div>
        );

    }

}

export default LoadingWrapper;
