import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params){ return this.store.find('worksheet', params.worksheet_id); },
  setupController(controller, model){
    this._super(controller, model);
    Ember.set(controller, 'worksheet', model);
    Ember.set(controller, 'questions', model.get('questions'));
  },
});
