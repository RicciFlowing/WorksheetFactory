import Ember from 'ember';

export default Ember.Controller.extend({
  archivedWorksheets: Ember.computed.filterBy('group.worksheets', 'archived', true),
  remainingWorksheets: Ember.computed.filterBy('group.worksheets', 'archived', false),

  actions: {
    submit(){
      this.send('createWorksheet', this.get('group'));
      let flash = this.get('flashMessages');
      flash.success('Created a Worksheet!');
      return false;
    },
  }
});
