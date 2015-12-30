import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    save(worksheet) {
      worksheet.save();
      this.sendAction('refresh');
    },
    cancel() {
      return false;
    }
  }
});
