
import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import { createStore } from 'redux';
import { Provider } from 'react-redux';
import { Router, browserHistory } from 'react-router';
import { syncHistoryWithStore } from 'react-router-redux';

import getRoutes from './routes';

import App from './Containers/App'
import blockApp from './Reducers/reducers';

let store = createStore(blockApp, window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__());
const history = syncHistoryWithStore(browserHistory, store);

const rootRoute = {
  component: App,
  childRoutes: getRoutes(),
}


ReactDOM.render(
  <Provider store={store}>
    <Router history={history}
            routes={rootRoute}
    />
  </Provider>
  , document.getElementById('app'));
