import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    save() {
      this.get('worksheet').save();
      this.transitionToRoute('worksheets');
    },
    cancel() {
      this.transitionToRoute('worksheets');
      return false;
    }
  }
});
