import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'li',
  classNames: ['group'],
  classNameBindings: ['selected'],
  selected: function() {
    return this.get('list.selected') === this.get('group');
  }.property('list.selected', 'group'),
  click(){
    this.sendAction('action', this.get('group'));
  },
});
