import Ember from 'ember';

export default Ember.Controller.extend({
  _positives: Ember.computed.mapBy('worksheetSet.results', 'positive'),
  positive: Ember.computed.sum('_positives'),
  _negatives: Ember.computed.mapBy('worksheetSet.results', 'negative'),
  negative: Ember.computed.sum('_negatives'),

});
