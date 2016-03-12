import Ember from 'ember';

export default Ember.Component.extend({
  session: Ember.inject.service('session'),
  actions: {
    logout() {
      this.get('session').invalidate();
    },
    session(){
    Ember.Logger.log(this.get('session').get('data'));
    }
  },
  email: Ember.computed.alias('session.data.authenticated.email')
});
