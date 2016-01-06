import Ember from 'ember';

export default Ember.Controller.extend({
  groupsSorting: ['id'],
  sortedGroups: Ember.computed.sort('groups', 'groupsSorting'),
  actions: {
    create_group() {
      this.get('new_group').save();
      this.send('reloadModels');
    },
    expand(){
      this.set('isExpanded', true);
    },
    contract(){
      this.set('isExpanded', false);
    }
  },
});
