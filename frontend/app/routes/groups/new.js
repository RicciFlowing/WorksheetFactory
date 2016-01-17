import Ember from 'ember';

export default Ember.Route.extend({
  model(){
   return Ember.RSVP.hash({
            group: this.store.createRecord('group'),
            factories: this.store.findAll('factory')
          });
  },
  setupController(controller, model){
    this._super(controller, model);
    Ember.set(controller, 'group', model.group);
    Ember.set(controller, 'factories', model.factories);
  },
});
