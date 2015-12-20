import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return Ember.RSVP.hash({
      worksheet: this.store.createRecord('worksheet'),
      factories: this.store.findAll('factory')
    })
  },
  setupController(controller, model){
    this._super(controller, model);
    Ember.set(controller, 'worksheet', model.worksheet);
    Ember.set(controller, 'factories', model.factories);
  }
});
