import { observable, computed, action } from 'mobx';

class UsersStore {

    @observable all;

    constructor() {
        this.all = null;
    }

    @action
    loadUsers(data) {
        api.post('users/data', data, action('loadSuccess', (res) => {
            this.all = res;
        }));
    }

    @action
    addUser(data, success, error, final) {
        api.post('users', data, action('addSuccess', (res) => {
            this.all = res.list;
            success(res);
        }), null, (res) => {
            final(res);
        });
    }

    @action
    editUser(data, success, error, final) {
        api.put('users/' + data.id, data, action('editSuccess', (res) => {
            this.all = res.list;
            success(res);
        }), null, (res) => {
            final(res);
        });
    }

    @action
    deleteUser(data, success) {
        api.delete('users/' + data.id, data, action('deleteSuccess', (res) => {
            this.all = res.list;
            success(res);
        }));
    }

}

export default UsersStore