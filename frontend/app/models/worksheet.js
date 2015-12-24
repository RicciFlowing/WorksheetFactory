import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  factory: DS.belongsTo('factory',  {async: false}),
  questions: DS.hasMany('questions',  {async: false}),
});
