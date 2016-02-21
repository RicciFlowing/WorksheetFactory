import DS from 'ember-data';

export default DS.Model.extend({
  positive: DS.attr('number'),
  negative: DS.attr('number'),
  group: DS.belongsTo('group', {async: true}),
  worksheet: DS.belongsTo('worksheet', {async: true}),
  question: DS.belongsTo('question', {async: true}),
});
