import React from 'react';
import {Link} from 'react-router'

export default React.createClass({
    render() {
        // const {a, b} = this.props;
        return (
            <div className="container" style={{
                textAlign: 'center'
            }}>
                <div>
                    <h1>react-router-redux</h1>

                    {this.props.children}
                </div>
                <footer style={{marginTop: '30px'}}>
                  <ul className="list-group">
                    <li className="list-group-item"><Link to="/">Home</Link></li>
                    <li className="list-group-item"><Link to="/main">Main</Link></li>
                  </ul>
                </footer>
            </div>
        )
    }
})
