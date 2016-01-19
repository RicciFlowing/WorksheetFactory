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
    this.controllerFor('groups').set('selectedGroup', 'new' );
  },
  resetController: function(controller, isExiting, transition) {
   if (isExiting) {
     let group = controller.get('group');
     if(group.get('isNew')){
       group.destroyRecord();
     }
   }
 },
  deactivate(){
    this._super();
    this.controllerFor('groups').set('selectedGroup', null );
  },
});
