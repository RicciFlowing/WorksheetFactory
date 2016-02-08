import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  worksheets: DS.hasMany('worksheet', {async: true}),
  worksheet_count: Ember.computed.alias('worksheets.length')
});
