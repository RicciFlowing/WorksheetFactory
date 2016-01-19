import Ember from 'ember';

export default Ember.Route.extend({
  model(params){
    return Ember.RSVP.hash({
      group: this.store.findRecord('group', params.group_id),
      new_worksheet: this.store.createRecord('worksheet'),
    });
  },
    setupController(controller, model){
      this._super(controller, model);
      Ember.set(controller, 'group', model.group);
      Ember.set(controller, 'new_worksheet', model.new_worksheet);
      Ember.set(controller, 'selectedGroup', model.group);
      this.controllerFor('groups').set('selectedGroup', model.group );
    },
    deactivate(){
      this._super();
      let model = this.controllerFor('groups.show').get('new_worksheet');
      model.destroyRecord();
      this.controllerFor('groups').set('selectedGroup', null );
    },
    actions: {
      reloadModels(){
        this.refresh();
        return false;
      },
      deleteWorksheet(worksheet){
        worksheet.destroyRecord();
        return false;
      }
    }
});
