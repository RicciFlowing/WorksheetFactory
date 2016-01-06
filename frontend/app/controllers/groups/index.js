import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    create_group() {
      this.get('new_group').save();
    },
  },
});
