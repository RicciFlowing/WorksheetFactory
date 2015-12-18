import DS from 'ember-data';

export default DS.Model.extend({
  worksheets: DS.hasMany('worksheets')
});
