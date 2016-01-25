import Ember from 'ember';

export default Ember.Route.extend({
  model(params){
    return Ember.RSVP.hash({
      group: this.store.findRecord('group', params.group_id),
    });
  },
    setupController(controller, model){
      this._super(controller, model);
      Ember.set(controller, 'group', model.group);
      Ember.set(controller, 'selectedGroup', model.group);
      this.controllerFor('groups').set('selectedGroup', model.group );
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
      createWorksheet(group){
        this.store.createRecord('worksheet', {group: group}).save();
        return false;
      },
      archiveWorksheet(worksheet){
        worksheet.set('archived', true);
        worksheet.save();
        return false;
      },
      refreshWorksheet(worksheet){
        worksheet.set('archived', false);
        worksheet.save();
        return false;
      }
    }
});
