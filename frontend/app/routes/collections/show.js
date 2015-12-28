import Ember from 'ember';

export default Ember.Route.extend({
    model(params){return this.store.find('collection', params.collection_id);},
    setupController(controller, model){
      this._super(controller, model);
      Ember.set(controller, 'collection', model);
    },
});
