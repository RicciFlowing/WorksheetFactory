import Ember from 'ember';
import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin'


export default Ember.Route.extend( AuthenticatedRouteMixin, {
  model(){
    return this.store.findAll('group');
  },
  setupController(controller, model){
    this._super(controller, model);
    Ember.set(controller, 'groups', model);
  },

  actions:{
    showGroup(group){
      this.transitionTo('groups.show', group.id);
    },
    newGroup(){
      this.transitionTo('groups.new');
    },
  }
});
