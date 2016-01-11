import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  description: DS.attr('string'),
  grade: DS.attr('number'),
  year: DS.attr('string'),
  factory: DS.belongsTo('factory',  {async: true}),
  worksheets: DS.hasMany('worksheet', {async: true}),
  worksheet_count: Ember.computed.alias('worksheets.length')
});
