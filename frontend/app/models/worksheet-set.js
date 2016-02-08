import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  worksheets: DS.hasMany('worksheet', {async: true}),
  archivedWorksheets: Ember.computed.filterBy('worksheets', 'archived', true),
  remainingWorksheets: Ember.computed.filterBy('worksheets', 'archived', false),
  worksheet_count: Ember.computed.alias('worksheets.length')
});
