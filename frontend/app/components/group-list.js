import Ember from 'ember';

export default Ember.Component.extend({
  selected: undefined,
  actions: {
  select: function(group) {
    this.set('selected', group);
  }
}
});
