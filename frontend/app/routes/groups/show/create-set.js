import Ember from 'ember';

export default Ember.Route.extend({
  model(params){
   return Ember.RSVP.hash({
            worksheetSet: this.store.createRecord('worksheet-set'),
            factories: this.store.findAll('factory'),
          });
  },
  afterModel(){
    let group = this.set('group', this.modelFor('groups.show'));
  },
  setupController(controller, model){
    this._super(controller, model);
    let worksheetSet = model.worksheetSet;
    worksheetSet.set('group', this.get('group'));
    Ember.set(controller, 'worksheetSet', worksheetSet);
    Ember.set(controller, 'factories', model.factories);
  },
  resetController: function(controller, isExiting, transition) {
   if(isExiting) {
     let worksheetSet = controller.get('worksheetSet');
     if(worksheetSet.get('isNew')){
       worksheetSet.destroyRecord();
     }
   }
 },
});
