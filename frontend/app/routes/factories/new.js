import Ember from 'ember';

export default Ember.Route.extend({
  model(){
    return Ember.RSVP.hash({
      skills: this.store.findAll('skill'),
      factory: this.store.createRecord('factory')
    });
  },
  setupController(controller, model){
    this._super(controller, model);
    Ember.set(controller, 'skills', model.skills);
    Ember.set(controller, 'factory', model.factory);
  },
});
