import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    submit() {
      this.get('group').save();
      this.transitionToRoute('groups');
    },
    cancel() {
      this.transitionToRoute('groups');
      return false;
    }
  }
});
