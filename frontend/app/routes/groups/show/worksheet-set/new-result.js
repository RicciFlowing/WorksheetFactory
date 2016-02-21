import Ember from 'ember';

export default Ember.Route.extend({
  model(params){
    return Ember.RSVP.hash({
      worksheet: this.store.findRecord('worksheet', params.worksheet_id),
    })
  },
    setupController(controller, model){
      Ember.set(controller, 'worksheet', model.worksheet);
      Ember.set(controller, 'group', this.modelFor('groups.show'));
      Ember.set(controller, 'positives', Ember.A());
    },
});
