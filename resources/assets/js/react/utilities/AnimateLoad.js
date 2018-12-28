import React, { Component } from 'react';

const AnimateLoad = (WrappedComponent) => {
    return class extends Component {
        state = {didMount: false};
        componentDidMount(){
            setTimeout(() => {
                this.setState({didMount: true})
            }, 0)
        }
        render() {
            const {didMount} = this.state;
            return (
                <div className={`animated faster ${didMount && 'slideInLeft'}`}>
                    <WrappedComponent {...this.props} />
                </div>
            );
        }
    }
};

export default AnimateLoad