import Ember from 'ember';

export default Ember.Route.extend({
  model(params){
    return this.store.findRecord('group', params.group_id);
  },
    setupController(controller, model){
      this._super(controller, model);
      Ember.set(controller, 'group', model);
      Ember.set(controller, 'selectedGroup', model);
      this.controllerFor('groups').set('selectedGroup', model );
    },
    deactivate(){
      this._super();
      this.controllerFor('groups').set('selectedGroup', null );
    },
    actions: {
      reloadModels(){
        this.refresh();
        return false;
      },
    }
});
