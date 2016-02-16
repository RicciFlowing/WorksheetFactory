import Ember from 'ember';

export default Ember.Route.extend({
  model(){
    return Ember.RSVP.hash({
      sectors: this.store.findAll('sector'),
      factory: this.store.createRecord('factory')
    });
  },
  setupController(controller, model){
    this._super(controller, model);
    Ember.set(controller, 'sectors', model.sectors);
    Ember.set(controller, 'factory', model.factory);
  },
  resetController: function(controller, isExiting, transition) {
   if (isExiting) {
     let factory = controller.get('factory');
     if(factory.get('isNew')){
       factory.destroyRecord();
     }
   }
 }
});
