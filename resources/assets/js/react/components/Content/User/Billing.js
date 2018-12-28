import React, { Component } from 'react';
import {observable, toJS} from 'mobx';
import { inject, observer} from "mobx-react";
import moment from "moment";
import autobind from "autobind-decorator";
import notify from "../../../utilities/Notify";
import swal from "../../../utilities/SweetAlert";
import Formsy from "formsy-react";
import Input from "../../Formsy/Input";

@inject('store') @observer
class Billing extends Component {

    @observable showCardForm = false;
    @observable saving = false;
    @observable showErrors = false;
    
    @autobind
    cancelSubscription(e) {
        e.preventDefault();

        const billing = this.props.store.billing;
        const subscription = toJS(billing.subscription);

        swal(
            `Cancel Subscription`,
            "Are you sure? You will retain access until your next billing date, at which point your subscription will be canceled.",
            (result) => {
                if ( result ) {
                    billing.cancelSubscription({id: subscription.id}, (res) => {
                        notify('success', 'Subscription canceled successfully.');
                    });
                }
            }
        );

    }

    @autobind
    resumeSubscription(e) {
        e.preventDefault();

        const billing = this.props.store.billing;
        const subscription = toJS(billing.subscription);

        swal(
            `Resume Subscription`,
            "Are you sure? By resuming your subscription, your fee and next billing date will remain the same.",
            (result) => {
                if ( result ) {
                    billing.resumeSubscription({id: subscription.id}, (res) => {
                        notify('success', 'Subscription resumed successfully.');
                    });
                }
            }
        );

    }

    @autobind
    deletePaymentMethod(e, id) {
        e.preventDefault();

        const billing = this.props.store.billing;
        const subscription = toJS(billing.subscription);

        swal(
            `Delete Payment Method`,
            "Are you sure you want to delete this payment method? This action cannot be undone.",
            (result) => {
                if ( result ) {
                    billing.deletePaymentMethod({id: id, company_id: subscription.company_id}, (res) => {
                        notify('success', 'Payment method deleted successfully.');
                    });
                }
            }
        );

    }
    
    @autobind
    setDefaultPaymentMethod(e, id) {
        e.preventDefault();
        const billing = this.props.store.billing;
        const subscription = toJS(billing.subscription);
        billing.setDefaultPaymentMethod({id: id, company_id: subscription.company_id}, (res) => {
            notify('success', 'Default payment method set.');
        });
    }

    @autobind
    toggleCardForm(e) {
        e.preventDefault();
        this.showErrors = false;
        this.showCardForm = !this.showCardForm;
    }

    @autobind
    invalidSubmit(data, resetForm, invalidateForm) {
        this.showErrors = true;
    }

    @autobind
    validSubmit(data) {
        if ( data ) {

            if ( data.card_expiration.length !== 5 ) {
                notify('danger', 'Invalid expiration date format.');
                return;
            }
            this.saving = true;
            const billing = this.props.store.billing;
            const subscription = toJS(billing.subscription);

            const authData = {};
            authData.clientKey = authorizenet_config.client_key;
            authData.apiLoginID = authorizenet_config.login_id;
            const cardData = {};
            cardData.cardNumber = data.card_number;
            cardData.month = data.card_expiration.split('/')[0];
            cardData.year = data.card_expiration.split('/')[1];
            cardData.cardCode = data.card_code;
            const secureData = {};
            secureData.authData = authData;
            secureData.cardData = cardData;

            Accept.dispatchData(secureData, (response) => {
                if ( response.messages.message[0].text.match(/encryption failed/) ) {
                    return;
                }
                if ( response.messages.resultCode === 'Ok' ) {
                    const dataNew = {};
                    dataNew.dataValue = response.opaqueData.dataValue;
                    dataNew.dataDescriptor = response.opaqueData.dataDescriptor;
                    dataNew.cc_expiration_month = cardData.month;
                    dataNew.cc_expiration_year = cardData.year;
                    dataNew.company_id = subscription.company_id;
                    billing.addCard(dataNew, (res) => {
                        this.showCardForm = false;
                        notify('success', 'Payment method added successfully.');
                    }, (res) => {
                        this.saving = false;
                    });

                } else {
                    let error = '';
                    let i = 0;
                    while ( i < response.messages.message.length ) {
                        error += response.messages.message[i].text;
                        i = i + 1;
                    }
                    notify('danger', error);
                    this.saving = false;
                }

            });

        }
    }


    render() {

        const billing = this.props.store.billing;
        const subscription = toJS(billing.subscription);
        const status_color = subscription.status === 'Active' ? 'text-success' : (subscription.status === 'Pending Cancelation' ? 'text-warning' : 'text-danger');

        const paymentMethods = toJS(this.props.store.billing.paymentMethods);
        if ( paymentMethods === null ) {
            this.props.store.billing.loadPaymentMethods({company_id: subscription.company_id});
        }
        const payments = toJS(this.props.store.billing.payments);
        if ( payments === null ) {
            this.props.store.billing.loadPayments({subscription_id: subscription.id});
        }

        return (
            <div>
                <h2>Billing & Subscription</h2>
                <div className="row mb-5">
                    <div className="col-sm-12">
                        <div className="card">
                            <div className="card-body">

                                <div className="form-group row">
                                    <div className="col-sm-3">
                                        <h5 className="mb-0 text-theme text-right">My Subscription</h5>
                                    </div>
                                </div>

                                <div className="labels-right">

                                    <div className="form-group row">
                                        <label className="col-form-label col-sm-3">Fee:</label>
                                        <div className="col-sm-9 form-control-static">
                                            ${ subscription.amount }/{ subscription.term }
                                        </div>
                                    </div>

                                    <div className="form-group row">
                                        <label className="col-form-label col-sm-3">Status:</label>
                                        <div className={"col-sm-9 form-control-static " + status_color}>
                                            { subscription.status }
                                            { subscription.status === 'Active' ? <a href="#" className="btn btn-sm btn-outline-danger ml-3" onClick={ this.cancelSubscription }><i className="fa fa-ban" /> Cancel Subscription</a> : ( subscription.status === 'Pending Cancelation' ? <a href="#" className="btn btn-sm btn-outline-success ml-3" onClick={ this.resumeSubscription }><i className="fa fa-undo" /> Resume Subscription</a> : <small className="ml-3 text-muted">(Please contact us if you'd like to resume your subscription.)</small> ) }
                                        </div>
                                    </div>

                                    { !subscription.canceled_at ? <div className="form-group row">
                                        <label className="col-form-label col-sm-3">Billing Date:</label>
                                        <div className="col-sm-9 form-control-static">
                                            { moment(subscription.next_billing_at).format('MMM D, YYYY') }
                                        </div>
                                    </div> : null }

                                    { subscription.canceled_at ? <div className="form-group row">
                                        <label className="col-form-label col-sm-3">Cancelation Date:</label>
                                        <div className="col-sm-9 form-control-static">
                                            { moment(subscription.canceled_at).format('MMM D, YYYY') }
                                        </div>
                                    </div> : null }

                                </div>

                                <div className="form-group row">
                                    <div className="col-sm-9 offset-sm-3">
                                        <hr/>
                                    </div>
                                </div>

                                <div className="form-group row">
                                    <div className="col-sm-3">
                                        <h5 className="mb-0 text-theme text-right">Payment Methods</h5>
                                    </div>
                                    <div className="col-sm-9">

                                        { paymentMethods && paymentMethods.length ? <div>
                                            { _.map(paymentMethods, (paymentMethod) => {
                                                const cc_type = paymentMethod.cc_type === 'American Express' ? 'amex' : paymentMethod.cc_type.toLowerCase();

                                                return <div className="mb-3" key={ paymentMethod.id }>
                                                    <span className="d-inline-block" style={{width: '250px'}}>
                                                        { paymentMethod.cc_type } <i className={ "fab fa-cc-" + cc_type } /> XXXX-{ paymentMethod.cc_last4 }, exp. { paymentMethod.cc_expiration_month + '/' + paymentMethod.cc_expiration_year }
                                                    </span>
                                                    <div className="abc-radio abc-radio-primary form-check-inline">
                                                        <input type="radio" name="payment_methods" id={"payment_method_" + paymentMethod.id } checked={ paymentMethod.is_default ? true : false } onChange={ (e) => this.setDefaultPaymentMethod(e, paymentMethod.id) } />
                                                        <label htmlFor={"payment_method_" + paymentMethod.id } className="form-check-label">Default</label>
                                                    </div>
                                                    { !paymentMethod.is_default ?
                                                        <a href="#" className="text-danger ml-3" onClick={ (e) => this.deletePaymentMethod(e, paymentMethod.id) }><i className="fa fa-trash-alt" /></a> :
                                                        null
                                                    }
                                                </div>;

                                            }) }
                                        </div> : <em className="text-muted">No Payments Methods Found</em> }

                                        { this.showCardForm ?
                                            <Formsy className={ this.showErrors ? 'show-validation-errors' : '' } onValidSubmit={ this.validSubmit } onInvalidSubmit={ this.invalidSubmit }>

                                                <div className="row mb-2">
                                                    <div className="col-sm-4">
                                                        <Input type="text" name="card_number" placeholder="Card Number" maxLength="16" required/>
                                                    </div>
                                                    <div className="col-sm-2">
                                                        <Input type="text" name="card_expiration" placeholder="MM/YY" maxLength="4" required/>
                                                    </div>
                                                    <div className="col-sm-2">
                                                        <Input type="text" name="card_code" placeholder="CVV" maxLength="5" required/>
                                                    </div>
                                                    <div className="col-sm-4">
                                                        <img src="/images/credit-cards.jpg" className=""/>
                                                    </div>
                                                </div>

                                                <button type="submit" className={"btn btn-sm btn-theme " + (this.saving ? 'disabled' : '')}>
                                                    { this.saving ? <i className="fa fa-circle-notch fa-spin fa-lg"/> : <span><i className="fa fa-check"/> Save</span> }
                                                </button> <a href="#" className="btn btn-sm btn-outline-secondary" onClick={this.toggleCardForm}>Cancel</a>

                                            </Formsy> :
                                            <div className="mt-3">
                                                <a href="#" className="btn btn-sm btn-outline-success" onClick={this.toggleCardForm}><i className="fa fa-credit-card"/> Add Payment Method</a>
                                            </div>
                                        }

                                    </div>
                                </div>

                                <div className="form-group row">
                                    <div className="col-sm-9 offset-sm-3">
                                        <hr/>
                                    </div>
                                </div>

                                <div className="form-group row">
                                    <div className="col-sm-3">
                                        <h5 className="mb-0 text-theme text-right">Billing History</h5>
                                    </div>
                                    <div className="col-sm-9">

                                        { payments && payments.length ? <table className="table table-striped table-sm no-border">
                                            <thead>
                                            <tr>
                                                <th>Transaction ID</th>
                                                <th>Amount</th>
                                                <th>Card</th>
                                                <th>Notes</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            { _.map(payments, (payment) => {
                                                return <tr key={ payment.id }>
                                                    <td>{ payment.transaction_id }</td>
                                                    <td>${ payment.amount.toFixed(2) }</td>
                                                    <td>{ payment.payment_method.cc_type + " " + payment.payment_method.cc_last4 }</td>
                                                    <td>{ payment.notes }</td>
                                                    <td>{ payment.status }</td>
                                                    <td>{ moment(payment.created_at).format('MMM D, YYYY') }</td>
                                                </tr>;
                                            }) }
                                            </tbody>
                                        </table> : <em className="text-muted">No Payments Found</em> }

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }

}

export default Billing