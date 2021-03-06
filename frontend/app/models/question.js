import DS from 'ember-data';

export default DS.Model.extend({
  text: DS.attr('string'),
  solution: DS.attr('string'),
  skill: DS.belongsTo('skill'),
  worksheets: DS.hasMany('worksheet'),
});
