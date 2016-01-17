import Ember from 'ember';

export default Ember.Component.extend({
    tagName: 'li',
    actions: {
      deletePressed(){
        Ember.Logger.info('Worksheet will be deleted:', 'in com');
        this.sendAction('action', this.get('worksheet'));
      }
    }
});
