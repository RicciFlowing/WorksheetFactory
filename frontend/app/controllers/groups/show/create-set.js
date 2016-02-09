import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    submit() {
      this.get('worksheetSet').save().then(()=>{
        this.transitionToRoute('groups.show.worksheet_set', this.get('worksheetSet').id );
      });

    },
    cancel() {
      this.transitionToRoute('groups');
      return false;
    }
  }
});
