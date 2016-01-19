import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    submit(){
      let new_worksheet = this.get('new_worksheet')
      new_worksheet.set('group', this.get('group'));
      new_worksheet.save();
      let flash = this.get('flashMessages');
      flash.success('Created a Worksheet!');
      this.send('reloadModels');
      return false;
    },
  }
});
