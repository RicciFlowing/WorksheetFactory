import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    save() {
      var skills = Ember.A(this.get('selection'));
      var factory = this.get('factory')
      factory.set('skills', skills);
      factory.save();
      //this.transitionToRoute('groups');
    },
    cancel() {
      //this.transitionToRoute('groups');
      return false;
    },
    didMakeSelection(selection){
        if (selection) {
          this.set('selection', selection)
        }
    }
  }
});
