import Ember from 'ember';

export default Ember.Component.extend({
  store: Ember.inject.service(),
  actions: {
    submit(){
        this.get('store').createRecord('worksheet', {worksheetSet: this.get('worksheet_set')}).save();
        return false;
        },
  }
});
