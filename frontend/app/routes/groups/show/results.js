import Ember from 'ember';

export default Ember.Route.extend({
  model(params){
    return Ember.RSVP.hash({
      set:       this.store.findRecord('worksheet-set', params.set_id),
      worksheet: this.store.findRecord('worksheet', params.worksheet_id),
    });
  },
    setupController(controller, model){
      this._super(controller, model);
      Ember.set(controller, 'worksheetSet', model.set);
      Ember.set(controller, 'worksheet', model.worksheet);
      //Ember.set(controller, 'group', this.modelFor('groups.show'));
    },
});
