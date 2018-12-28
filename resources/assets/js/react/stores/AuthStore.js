import { observable, computed, action } from 'mobx';

class AuthStore {

    @observable user;

    constructor() {
        this.user = loadData.user;
    }

    @action
    loadUser() {
        api.post('profile/get', {}, action('loadSuccess', (res) => {
            this.user = res;
        }));
    }
    
    @action
    saveUser(data, success, error, final) {

        api.post('profile/save', data, action('saveSuccess', (res) => {
            this.user = res;
            success(res);
        }), null, (res) => {
            final(res);
        });

    }

}

export default AuthStore