import Ember from 'ember';

export default Ember.Component.extend({
  showArchive: false,
  store: Ember.inject.service(),
  sorting: ['id:desc'],
  sortedRemainingWorksheets: Ember.computed.sort('worksheetSet.remainingWorksheets', 'sorting'),
  sortedArchivedWorksheets: Ember.computed.sort('worksheetSet.archivedWorksheets', 'sorting'),
  actions: {
    submit(){
        this.get('store').createRecord('worksheet', {worksheetSet: this.get('worksheetSet')}).save();
        return false;
        },
    toggleArchive(){
      this.set('showArchive', !this.get('showArchive'));
    },
    delete(){
      this.get('worksheetSet').destroyRecord();
    }
  }
});
