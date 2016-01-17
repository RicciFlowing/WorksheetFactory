import Ember from 'ember';

export default Ember.Component.extend({
    tagName: 'li',
    actions: {
      deletePressed(){
        this.sendAction('action', this.get('worksheet'));
      }
    }
});
