import Ember from 'ember';

export default Ember.Route.extend({
  model(params){
    return this.store.findRecord('worksheet-set', params.set_id);
  },
    setupController(controller, model){
      Ember.set(controller, 'worksheetSet', model);
    },
});
