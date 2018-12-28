if ( process.env.NODE_ENV === 'development' ) {
    require('react-hot-loader/patch');
}
require('./bootstrap');

import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'mobx-react';
import { AppContainer } from 'react-hot-loader';

import Store from './stores/Store';
import Router from './components/Router';

const render = (Component) => {
    ReactDOM.render(
        <Provider store={Store}>
            <AppContainer>
                <Component />
            </AppContainer>
        </Provider>,
        document.getElementById('account'),
    );
};

render(Router);

// Webpack Hot Module Replacement API
if ( process.env.NODE_ENV === 'development' && module.hot ) {
    module.hot.accept('./components/Router', () => {
        render(Router);
    });
}