import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  description: DS.attr('string'),
  year: DS.attr('string'),
  grade: DS.attr('number'),
  worksheets: DS.hasMany('worksheets'),
  factories: DS.hasMany('factory'),
});
