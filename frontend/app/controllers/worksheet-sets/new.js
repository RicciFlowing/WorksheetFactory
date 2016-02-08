import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    submit() {
      this.get('worksheetSet').save().then(()=>{
        this.transitionToRoute('groups');
      });

    },
    cancel() {
      this.transitionToRoute('groups');
      return false;
    }
  }
});
