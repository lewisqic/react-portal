import React, { Component } from 'react';
import { observable, toJS } from 'mobx';
import { inject, observer} from "mobx-react";
import autobind from 'autobind-decorator';
import Formsy from 'formsy-react';
import Input from '../../Formsy/Input';
import notify from "../../../utilities/Notify";

@inject('store') @observer
class Profile extends Component {

    @observable saving = false;
    @observable showErrors = false;
    @observable showPasswords = false;

    @autobind
    togglePasswords(e) {
        this.showPasswords = !this.showPasswords;
    }

    @autobind
    invalidSubmit(data, resetForm, invalidateForm) {
        this.showErrors = true;
    }

    @autobind
    validSubmit(data) {
        if ( data ) {
            this.saving = true;
            const auth = this.props.store.auth;
            auth.saveUser(data, (res) => {
                notify('success', 'Profile data saved successfully.');
            }, null, (res) => {
                this.saving = false;
            });
        }
    }

    render() {
        const user = toJS(this.props.store.auth.user);

        return (
            <div>
                <h2>My Profile</h2>
                <div className="row mb-5">
                    <div className="col-sm-12">
                        <div className="card">
                            <div className="card-body labels-right">

                                <Formsy className={this.showErrors ? 'show-validation-errors' : ''} onValidSubmit={this.validSubmit} onInvalidSubmit={this.invalidSubmit}>

                                    <div className="form-group row">
                                        <label className="col-form-label col-sm-3">First Name</label>
                                        <div className="col-sm-9">
                                            <Input type="text" name="first_name" placeholder="First Name" value={ user ? user.first_name : null } required />
                                        </div>
                                    </div>

                                    <div className="form-group row">
                                        <label className="col-form-label col-sm-3">Last Name</label>
                                        <div className="col-sm-9">
                                            <Input type="text" name="last_name" placeholder="Last Name" value={ user ? user.last_name : null } required />
                                        </div>
                                    </div>

                                    <div className="form-group row">
                                        <label className="col-form-label col-sm-3">Email</label>
                                        <div className="col-sm-9">
                                            <Input type="email" name="email" placeholder="Email Address" value={ user ? user.email : null } validations="isEmail" validationError="Enter a valid email address." required />
                                        </div>
                                    </div>

                                    <div className="form-group row">
                                        <div className="col-sm-9 ml-auto">
                                            <div className="abc-checkbox abc-checkbox-primary form-check form-check-inline">
                                                <input type="checkbox" className="" id="change_password" onChange={this.togglePasswords} />
                                                <label className="form-check-label" htmlFor="change_password">Change Password</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div className={this.showPasswords ? "" : "hide"}>

                                        <div className="form-group row">
                                            <label className="col-form-label col-sm-3">Password</label>
                                            <div className="col-sm-9">
                                                <Input type="password" name="password" validations="minLength:8" validationError="Password must be 8 or more characters." />
                                            </div>
                                        </div>

                                        <div className="form-group row">
                                            <label className="col-form-label col-sm-3">Confirm Password</label>
                                            <div className="col-sm-9">
                                                <Input type="password" name="password_confirmation" validations="equalsField:password" validationError="Does not match password field." />
                                            </div>
                                        </div>

                                    </div>

                                    <div className="form-group row mt-5">
                                        <div className="col-sm-9 ml-auto">
                                            <button type="submit" className={ "btn btn-theme " + (this.saving ? 'disabled' : '') }>
                                                { this.saving ? <i className="fa fa-circle-notch fa-spin fa-lg" /> : <span><i className="fa fa-check" /> Save</span> }
                                            </button>
                                        </div>
                                    </div>


                                </Formsy>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }

}

export default Profile