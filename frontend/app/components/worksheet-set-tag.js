import Ember from 'ember';

export default Ember.Component.extend({
  showArchive: false,
  store: Ember.inject.service(),
  sorting: ['id:desc'],
  sortedRemainingWorksheets: Ember.computed.sort('worksheet_set.remainingWorksheets', 'sorting'),
  sortedArchivedWorksheets: Ember.computed.sort('worksheet_set.archivedWorksheets', 'sorting'),
  actions: {
    submit(){
        this.get('store').createRecord('worksheet', {worksheetSet: this.get('worksheet_set')}).save();
        return false;
        },
    toggleArchive(){
      this.set('showArchive', !this.get('showArchive'));
    },
    delete(){
      this.get('worksheet_set').destroyRecord();
    }
  }
});
