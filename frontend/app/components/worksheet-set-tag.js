import Ember from 'ember';

export default Ember.Component.extend({
  showArchive: false,
  store: Ember.inject.service(),
  actions: {
    submit(){
        this.get('store').createRecord('worksheet', {worksheetSet: this.get('worksheet_set')}).save();
        return false;
        },
    toggleArchive(){
      this.set('showArchive', !this.get('showArchive'));
    }
  }
});
