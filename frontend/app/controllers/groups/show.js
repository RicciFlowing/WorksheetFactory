import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    create_worksheet() {
      var new_worksheet = this.store.createRecord('worksheet');
      var group = this.get('model');
      new_worksheet.set('group', group);
      new_worksheet.title= Ember.$('.title-field').val() || 'No title given';
      Ember.$('.title-field').val('');
      new_worksheet.save();
      let flash = this.get('flashMessages');
      flash.success('Success!');
      return false;
    },

  }
});
