import Ember from 'ember';

export default Ember.Route.extend({
  model(params){
    return Ember.RSVP.hash({
      group: this.store.findRecord('group', params.id),
      new_worksheet: this.store.createRecord('worksheet'),
    });
  },
    setupController(controller, model){
      this._super(controller, model);
      Ember.set(controller, 'group', model.group);
      Ember.set(controller, 'new_worksheet', model.new_worksheet);
    },
    deactivate(){
      let model = this.controllerFor('groups.show').get('new_worksheet');
      model.rollbackAttributes();
    },
    actions: {
      reloadModels(){
        this.refresh();
        return false;
      },
    }
});
