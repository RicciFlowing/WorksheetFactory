import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  archived: DS.attr('boolean'),
  questions: DS.hasMany('questions', {async: true}),
  group: DS.belongsTo('group', {async: true}),
  //createdAt: DS.attr('string'),
});
