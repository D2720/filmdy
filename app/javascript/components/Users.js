import React from "react"
import PropTypes from "prop-types"
class Users extends React.Component {
  render() {
    return (
    	<React.Fragment>
	      <div>
	        <h1>All Users</h1>
	        <ul>
	          {this.props.mails.map(mail => (
	            <li>{mail}</li>
	          ))}
	        </ul>
	      </div>
	    </React.Fragment>
    );
  }
}

Users.propTypes = {
  mails: PropTypes.string
}

export default Users