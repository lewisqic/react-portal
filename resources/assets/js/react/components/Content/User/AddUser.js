import React, { Component } from 'react';
import {observable, toJS} from 'mobx';
import { inject, observer} from "mobx-react";
import autobind from 'autobind-decorator';
import { Modal, ModalHeader, ModalBody, ModalFooter } from 'reactstrap';
import Formsy from 'formsy-react';
import Input from '../../Formsy/Input';
import Select from '../../Formsy/Select';
import notify from "../../../utilities/Notify";

@inject('store') @observer
class Users extends Component {

    @observable saving = false;
    @observable showErrors = false;
    
    @autobind
    invalidSubmit(data, resetForm, invalidateForm) {
        this.showErrors = true;
    }

    @autobind
    validSubmit(data) {
        if ( data ) {
            const props = this.props;
            this.saving = true;

            const users = this.props.store.users;
            if ( data.id ) {
                users.editUser(data, (res) => {
                    props.toggleAddUser();
                    notify('success', 'User updated successfully.');
                }, null, (res) => {
                    this.saving = false;
                });
            } else {
                users.addUser(data, (res) => {
                    props.toggleAddUser();
                    notify('success', 'User added successfully.');
                }, null, (res) => {
                    this.saving = false;
                });
            }

        }
    }

    render() {
        const user = toJS(this.props.store.auth.user);
        const userToEdit = toJS(this.props.userToEdit);
        const company_id = user ? user.company_id : '';
        const options = _.map(loadData.roles, (role) => {
            return {value: role.id, text: role.name};
        });

        return (
            <Modal isOpen={ this.props.show } onClosed={ () => this.showErrors = false } toggle={ this.props.toggleAddUser } className={ this.props.className } size="lg" fade={ true }>
                <Formsy className={"labels-right " + (this.showErrors ? 'show-validation-errors' : '')} onValidSubmit={this.validSubmit} onInvalidSubmit={this.invalidSubmit}>
                    <Input type="hidden" name="id" value={ userToEdit ? userToEdit.id : null } />
                    <Input type="hidden" name="company_id" value={ company_id } />

                    <ModalHeader toggle={ this.props.toggleAddUser }>
                        { userToEdit ? 'Edit User' : 'Add New User' }
                    </ModalHeader>
                    <ModalBody>

                        <div className="form-group row">
                            <label className="col-form-label col-sm-3">Role</label>
                            <div className="col-sm-9">
                                <Select name="role" options={options} value={ userToEdit ? userToEdit.roles[0].id : null } />
                            </div>
                        </div>

                        <div className="form-group row">
                            <label className="col-form-label col-sm-3">First Name</label>
                            <div className="col-sm-9">
                                <Input type="text" name="first_name" placeholder="First Name" value={ userToEdit ? userToEdit.first_name : null } required />
                            </div>
                        </div>

                        <div className="form-group row">
                            <label className="col-form-label col-sm-3">Last Name</label>
                            <div className="col-sm-9">
                                <Input type="text" name="last_name" placeholder="Last Name" value={ userToEdit ? userToEdit.last_name : null } required />
                            </div>
                        </div>

                        <div className="form-group row">
                            <label className="col-form-label col-sm-3">Email</label>
                            <div className="col-sm-9">
                                <Input type="email" name="email" placeholder="Email Address" value={ userToEdit ? userToEdit.email : null } validations="isEmail" validationError="Enter a valid email address." required />
                            </div>
                        </div>

                        <div className="form-group row">
                            <label className="col-form-label col-sm-3">Password</label>
                            <div className="col-sm-9">
                                <Input type="password" name="password" placeholder="Password" validations="minLength:8" validationError="Password must be 8 or more characters." required={ userToEdit ? false : true } />
                            </div>
                        </div>

                        <div className="form-group row">
                            <label className="col-form-label col-sm-3">Confirm Password</label>
                            <div className="col-sm-9">
                                <Input type="password" name="password_confirmation" placeholder="Password Confirmation" validations="equalsField:password" validationError="Does not match password field." required={ userToEdit ? false : true } />
                            </div>
                        </div>


                    </ModalBody>
                    <ModalFooter>
                        <button type="submit" className={ "btn btn-theme " + (this.saving ? 'disabled' : '') }>
                            { this.saving ? <i className="fa fa-circle-notch fa-spin fa-lg" /> : <span><i className="fa fa-check" /> Save</span> }
                        </button>
                        <a href="#" className="btn btn-secondary" onClick={ this.props.toggleAddUser }>
                            Cancel
                        </a>
                    </ModalFooter>

                </Formsy>
            </Modal>
        );
    }

}

export default Users