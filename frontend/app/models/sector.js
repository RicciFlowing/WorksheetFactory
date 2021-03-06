import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  skills: DS.hasMany('skill', {async: true}),
  skillCount: Ember.computed.alias('skills.length'),
});
