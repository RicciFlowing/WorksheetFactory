import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  description: DS.attr('string'),
  grade: DS.attr('number'),
  year: DS.attr('string'),
  worksheetSets: DS.hasMany('worksheet-set', {async: true}),
  results: DS.hasMany('result', {async: true}),
  fullName: Ember.computed('name', 'grade', function(name, grade){return `${this.get('grade')}${this.get('name')}`;}),
  //worksheet_count: Ember.computed.alias('worksheets.length')
});
