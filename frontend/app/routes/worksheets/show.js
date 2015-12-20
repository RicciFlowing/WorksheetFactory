import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params){this.store.findRecord('worksheet', params.worksheet_id)}
});
