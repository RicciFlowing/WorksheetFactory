import Ember from 'ember';

export default Ember.Component.extend({
    tagName: 'li',
    archived: Ember.computed.alias('worksheet.archived'),
    actions: {
      pressedButton(){
        this.sendAction('action', this.get('worksheet'));
      }
    }
});
