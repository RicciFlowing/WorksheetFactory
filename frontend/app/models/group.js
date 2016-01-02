import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  factory: DS.belongsTo('factory',  {async: false}),
  worksheets: DS.hasMany('worksheet',  {async: false}),
  worksheet_count: Ember.computed('worksheets', function(){ return this.get('worksheets').length})
});
