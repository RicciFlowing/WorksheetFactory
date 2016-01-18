import Ember from 'ember';

export default Ember.Route.extend({
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
    }
  }
});
