import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  factory: DS.hasMany('factory', {async: true}),
  questions: DS.hasMany('question', {async: true})
});
