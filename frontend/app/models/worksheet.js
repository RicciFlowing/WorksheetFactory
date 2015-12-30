import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  questions: DS.hasMany('questions',  {async: false}),
  group: DS.belongsTo('group',  {async: false}),
});
