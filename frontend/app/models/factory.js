import DS from 'ember-data';

export default DS.Model.extend({
  skills: DS.hasMany('skill', {async: false}),
  name: DS.attr('string'),
//  collection: DS.belongsTo('collection')
});
