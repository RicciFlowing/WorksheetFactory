import Ember from 'ember';

export default Ember.Route.extend({
  model(params){
    return this.store.findRecord('worksheet-set', params.worksheet_set_id);
  },
    setupController(controller, model){
      this._super(controller, model);
      Ember.set(controller, 'worksheetSet', model);
    },
});
