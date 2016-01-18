import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'li',
  classNameBindings: ['active'],
  active: false,
  click(){
    this.sendAction('action', this.get('group'));
  },
});
