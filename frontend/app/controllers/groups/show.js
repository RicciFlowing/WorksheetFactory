import Ember from 'ember';

export default Ember.Controller.extend({
  showArchive: false,
  archivedWorksheets: Ember.computed.filterBy('group.worksheets', 'archived', true),
  remainingWorksheets: Ember.computed.filterBy('group.worksheets', 'archived', false),
  archiveCount: Ember.computed.alias('archivedWorksheets.length'),
  archiveHidden:  Ember.computed.not('showArchive'),
  boolArchiveCount: Ember.computed.bool('archiveCount'),
  archiveButtonVisible: Ember.computed.and('boolArchiveCount', 'archiveHidden'),

  actions: {
    submit(){
      this.send('createWorksheet', this.get('group'));
      let flash = this.get('flashMessages');
      flash.success('Created a Worksheet!');
      return false;
    },
    toggleArchive(){
      this.set('showArchive',!this.get('showArchive'));
    },
  }
});
