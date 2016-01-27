import Ember from 'ember';

export default Ember.Controller.extend({
  groupsSorting: ['id'],
  sortedGroups: Ember.computed.sort('groups', 'groupsSorting'),
  selectedGroup: null,
  actions: {
    delete_group(group) {
      group.deleteRecord();
      group.save();
      return false;
    },
  },
});
