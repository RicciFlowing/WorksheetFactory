import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  factory: DS.belongsTo('factory',  {async: false}),
  worksheets: DS.hasMany('worksheet',  {async: false}),
});
