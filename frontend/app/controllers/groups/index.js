import Ember from 'ember';

export default Ember.Controller.extend({
  groupsSorting: ['id'],
  sortedGroups: Ember.computed.sort('groups', 'groupsSorting'),
  actions: {
    create_group() {
      this.get('new_group').save();
      this.send('reloadModels');
    },
    delete_group(group) {
      group.deleteRecord();
      group.save();
    },
    expand(){
      this.set('isExpanded', true);
    },
    contract(){
      this.set('isExpanded', false);
    }
  },
});
