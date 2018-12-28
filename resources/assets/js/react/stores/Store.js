import AuthStore from './AuthStore';
import UsersStore from './UsersStore';
import BillingStore from './BillingStore';

class Store {

    constructor() {
        this.auth = new AuthStore(this);
        this.users = new UsersStore(this);
        this.billing = new BillingStore(this);
    }

}

const store = new Store();
export default store;