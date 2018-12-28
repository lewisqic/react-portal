import React, { Component } from 'react';
import { ToastContainer, toast } from 'react-toastify';

class BaseLayout extends Component {

    render() {


        return (
            <div className="base-layout">
                { this.props.children }
                <ToastContainer
                    position="top-center"
                    autoClose={5000}
                    hideProgressBar={false}
                    newestOnTop
                    closeOnClick
                    pauseOnHover
                />
            </div>
        );

    }

}

export default BaseLayout;