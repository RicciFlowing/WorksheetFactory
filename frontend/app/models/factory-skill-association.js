import DS from 'ember-data';

export default DS.Model.extend({
  skill: DS.belongsTo('skill'),
  factory: DS.belongsTo('factory'),
});
