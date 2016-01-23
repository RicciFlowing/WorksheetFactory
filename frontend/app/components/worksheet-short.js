import Ember from 'ember';

export default Ember.Component.extend({
    tagName: 'li',
    actions: {
      pressedButton(){
        this.sendAction('action', this.get('worksheet'));
      }
    }
});
