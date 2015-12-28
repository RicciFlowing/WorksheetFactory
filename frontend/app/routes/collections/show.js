import Ember from 'ember';

export default Ember.Route.extend({
    model(params){
        return Ember.RSVP.hash({
          collection: this.store.find('collection', params.collection_id),
          worksheet_new: this.store.createRecord('worksheet')
        });
      },
    setupController(controller, model){
      this._super(controller, model);
      Ember.set(controller, 'collection', model.collection);
      Ember.set(controller, 'worksheet_new', model.worksheet_new);
    },
});
