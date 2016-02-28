import Ember from 'ember';

export default Ember.Route.extend({
  model(params){
       return Ember.RSVP.hash({
        // set:       this.store.findRecord('worksheet-set', params.set_id),
         worksheet: this.store.findRecord('worksheet', params.worksheet_id),
         results:   this.store.query('result', {worksheet_id: params.worksheet_id}),
    });

  },
    setupController(controller, model){
      this._super(controller, model);
      Ember.set(controller, 'worksheetSet', this.modelFor('groups.show.worksheet_set'));
      Ember.set(controller, 'worksheet', model.worksheet);
      Ember.set(controller, 'results', model.results);
      Ember.Logger.log(model.results);
    },
});
