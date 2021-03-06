import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  group: DS.belongsTo('group', {async: true}),
  factory: DS.belongsTo('factory', {async: true}),
  worksheets: DS.hasMany('worksheet', {async: true}),
  results: DS.hasMany('results', {async: true}),

  archivedWorksheets: Ember.computed.filterBy('worksheets', 'archived', true),
  remainingWorksheets: Ember.computed.filterBy('worksheets', 'archived', false),
  worksheet_count: Ember.computed.alias('worksheets.length'),

  questionCount: Ember.computed.alias('worksheets.firstObject.questionCount'),
  archivedWorksheetCount: Ember.computed.alias('archivedWorksheets.length'),
  hasArchivedWorksheets: Ember.computed.gt('archivedWorksheetCount', 0),

  _positives: Ember.computed.mapBy('worksheetSet.results', 'positive'),
  positive: Ember.computed.sum('_positives'),
  _negatives: Ember.computed.mapBy('worksheetSet.results', 'negative'),
  negative: Ember.computed.sum('_negatives'),
});
