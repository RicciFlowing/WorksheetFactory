import Ember from 'ember';

export default Ember.Route.extend({
  model(){
    return this.store.findAll('worksheet-set');
  },

  setupController(controller, model){
    this._super(controller, model);
    Ember.set(controller, 'sets', model);
  },

  actions:{
    showSet(set){
      this.transitionTo('sets.show', set.id);
    },
    newSet(){
      this.transitionTo('sets.new');
    },
  }
});
