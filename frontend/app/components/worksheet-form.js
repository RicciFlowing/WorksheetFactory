import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    save(worksheet) {
      worksheet.save();
    },
    cancel() {
      return false;
    }
  }
});
