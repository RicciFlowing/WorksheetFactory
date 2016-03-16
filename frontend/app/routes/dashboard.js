import Ember from 'ember';
import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin';

const { service } = Ember.inject;

export default Ember.Route.extend(AuthenticatedRouteMixin, {
  model(){
    return Ember.RSVP.hash({
      groups: this.store.findAll('group'),
      factories: this.store.findAll('factory'),
    }
    );

  },
  setupController(controller, model){
    Ember.set(controller, 'groups', model.groups);
    Ember.set(controller, 'factories', model.factories);
  },

  session: service('session'),
  email: Ember.computed.alias('session.data.authenticated.email'),
});
