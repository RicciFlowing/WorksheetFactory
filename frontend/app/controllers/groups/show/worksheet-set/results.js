import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    submit() {
      this.updateResults();
      this.transitionToRoute('groups.show.worksheet_set');
    },
    cancel() {
      this.transitionToRoute('groups');
      return false;
    }
  },
  updateResults(){
    this.get('results').forEach((result)=>{
      result.save();
    });
  }
});
