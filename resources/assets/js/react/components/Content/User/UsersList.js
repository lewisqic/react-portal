import React, { Component } from 'react';
import {observable, toJS} from 'mobx';
import { inject, observer} from "mobx-react";
import autobind from 'autobind-decorator';
import moment from 'moment';
import swal from "../../../utilities/SweetAlert";
import notify from "../../../utilities/Notify";

import AddUser from './AddUser';

@inject('store') @observer
class Users extends Component {

    @observable userToEdit = null;
    @observable showAddUser = false;

    @autobind
    toggleAddUser(e) {
        if ( e ) e.preventDefault();
        this.userToEdit = null;
        this.showAddUser = !this.showAddUser;
    }

    @autobind
    toggleEditUser(e, user) {
        if ( e ) e.preventDefault();
        this.userToEdit = user;
        this.showAddUser = !this.showAddUser;
    }

    @autobind
    deleteUser(e, user) {
        if ( e ) e.preventDefault();
        const users = this.props.store.users;

        swal(
            `Delete ${user.first_name} ${user.last_name}?`,
            "Are you sure? This action cannot be undone.",
            function(result) {
                if ( result ) {
                    users.deleteUser({id: user.id}, (res) => {
                        notify('success', 'User deleted successfully.');
                    });
                }
            }
        );
        
    }

    render() {
        const user = toJS(this.props.store.auth.user);
        const allUsers = toJS(this.props.store.users.all);

        if ( allUsers === null ) {
            this.props.store.users.loadUsers({company_id: user.company_id});
        }

        return (
            <div>
                <div className="float-right">
                    <a href="#" className="btn btn-theme" onClick={ this.toggleAddUser }>
                        <i className="fal fa-plus-circle" /> Add User
                    </a>
                </div>
                <h2>Manage Users</h2>
                <div className="row mb-5">
                    <div className="col-sm-12">
                        <div className="card">
                            <div className="card-body">
                                <table className="table table-striped no-border">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Role</th>
                                            <th>Added</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        { _.map(allUsers, (user) => {
                                            return <tr key={ user.id }>
                                                <td>{ user.first_name + ' ' + user.last_name }</td>
                                                <td>{ user.email }</td>
                                                <td>{ user.roles[0].name }</td>
                                                <td>{ moment(user.created_at).format('MMM D, YYYY') }</td>
                                                <td>
                                                    <a href="#" className="btn btn-sm btn-outline-secondary text-primary mr-2" onClick={ (e) => this.toggleEditUser(e, user) }><i className="fa fa-edit" /> Edit</a>
                                                    <a href="#" className="btn btn-sm btn-outline-secondary text-danger" onClick={ (e) => this.deleteUser(e, user) }><i className="fa fa-trash-alt" /> Delete</a>
                                                </td>
                                            </tr>;
                                        }) }
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <AddUser show={this.showAddUser} toggleAddUser={this.toggleAddUser} userToEdit={ this.userToEdit } />

            </div>
        );
    }

}

export default Users