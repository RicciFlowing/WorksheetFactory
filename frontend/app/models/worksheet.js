import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  archived: DS.attr('boolean', { defaultValue: false }),
  questions: DS.hasMany('questions', {async: true}),
  worksheetSet: DS.belongsTo('worksheet-set', {async: true}),
  results: DS.hasMany('result', {async: true}),
  questionCount: Ember.computed.alias('questions.length'),
  //createdAt: DS.attr('string'),
});
