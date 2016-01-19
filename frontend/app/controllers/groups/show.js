import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    submit(){
      this.send('createWorksheet', this.get('group'));
      let flash = this.get('flashMessages');
      flash.success('Created a Worksheet!');
      return false;
    },
  }
});
