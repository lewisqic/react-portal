import { observable, computed, action } from 'mobx';

class BillingStore {

    @observable subscription;
    @observable payments;
    @observable paymentMethods;

    constructor() {
        this.subscription = loadData.subscription;
        this.payments = null;
        this.paymentMethods = null;
    }

    @action
    loadPayments(data) {
        api.post('billing/payments', data, action('loadSuccess', (res) => {
            this.payments = res;
        }));
    }

    @action
    loadPaymentMethods(data) {
        api.post('billing/payment-methods', data, action('loadSuccess', (res) => {
            this.paymentMethods = res;
        }));
    }

    @action
    cancelSubscription(data, success) {
        api.post('billing/cancel-subscription', data, action('cancelSuccess', (res) => {
            this.subscription = res;
            success(res);
        }));
    }

    @action
    resumeSubscription(data, success) {
        api.post('billing/resume-subscription', data, action('resumeSuccess', (res) => {
            this.subscription = res;
            success(res);
        }));
    }

    @action
    setDefaultPaymentMethod(data, success) {
        api.post('billing/set-default-payment-method', data, action('setSuccess', (res) => {
            this.paymentMethods = res;
            success(res);
        }));
    }
    
    @action
    deletePaymentMethod(data, success) {
        api.post('billing/delete-payment-method', data, action('deleteSuccess', (res) => {
            this.paymentMethods = res;
            success(res);
        }));
    }

    @action
    addCard(data, success, final) {
        api.post('billing/add-payment-method', data, action('addSuccess', (res) => {
            this.paymentMethods = res;
            success(res);
        }), null, (res) => {
            final(res);
        });
    }


}

export default BillingStore