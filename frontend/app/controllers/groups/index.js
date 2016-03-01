import Ember from 'ember';

export default Ember.Controller.extend({
  groupsSorting: ['id'],
  sortedGroups: Ember.computed.sort('groups', 'groupsSorting'),
  selectedGroup: null,
  _positive: Ember.computed.mapBy('worksheetSet', 'positive'),
  positive:  Ember.computed.sum('positive'),
});
