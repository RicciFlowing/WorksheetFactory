import Ember from 'ember';

export default Ember.Route.extend({
    model(){
      return Ember.RSVP.hash({
        groups: this.store.findAll('group'),
        factories: this.store.findAll('factory')
      });
    },
      setupController(controller, model){
        this._super(controller, model);
        Ember.set(controller, 'groups', model.groups);
        Ember.set(controller, 'factories', model.factories);
      },
});
