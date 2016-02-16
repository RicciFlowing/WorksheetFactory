import Ember from 'ember';

export default Ember.Route.extend({
  model(params){
    return this.store.find('sector', params.sector_id);
  },
  setupController(controller, model){
    this._super(controller, model);
    Ember.set(controller, 'sector', model);
  }
});
