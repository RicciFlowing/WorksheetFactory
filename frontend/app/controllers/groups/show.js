import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    create_worksheet() {
      var new_worksheet = this.store.createRecord('worksheet');
      var group = this.get('group');
      new_worksheet.set('group', group);
      new_worksheet.set('factory', group.get('factory'));
      new_worksheet.save();
      return false;
    },

  }
});
