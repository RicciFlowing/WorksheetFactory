import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    create_group() {
      var new_group = this.store.createRecord('group');
      new_group.name = Ember.$('.name-field').val() || 'No name given';
      Ember.$('.name-field').val('');
      var factory = this.get('factory');
      new_group.set('factory', factory);
      new_group.save();
      return false;
    },

  }
});
