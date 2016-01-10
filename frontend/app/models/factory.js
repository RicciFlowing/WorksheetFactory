import DS from 'ember-data';

export default DS.Model.extend({
  skills: DS.hasMany('skill', {async: true}),
  name: DS.attr('string'),
});
